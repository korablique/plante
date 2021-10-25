import 'dart:async';
import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:plante/base/result.dart';
import 'package:plante/logging/log.dart';
import 'package:plante/model/product.dart';
import 'package:plante/model/shop.dart';
import 'package:plante/model/shop_product_range.dart';
import 'package:plante/model/user_params.dart';
import 'package:plante/model/user_params_controller.dart';
import 'package:plante/model/veg_status.dart';
import 'package:plante/outside/backend/product_presence_vote_result.dart';
import 'package:plante/outside/map/address_obtainer.dart';
import 'package:plante/outside/map/shops_manager.dart';
import 'package:plante/outside/map/shops_manager_types.dart';
import 'package:plante/outside/products/products_obtainer.dart';
import 'package:plante/outside/products/suggested_products_manager.dart';

class ShopProductRangePageModel implements ShopsManagerListener {
  final ShopsManager _shopsManager;
  final SuggestedProductsManager _suggestedProductsManager;
  final ProductsObtainer _productsObtainer;
  final UserParamsController _userParamsController;
  final AddressObtainer _addressObtainer;

  final Shop _shop;
  late final FutureShortAddress _address;

  final VoidCallback _updateCallback;

  Completer<void>? _loadingConfirmedProducts;
  bool _performingBackendAction = false;
  Result<ShopProductRange, ShopsManagerError>? _shopProductRange;
  var _lastSortedConfirmedBarcodes = <String>[];

  bool _loadingSuggestedProducts = false;
  final _suggestedProducts = <Product>[];

  bool get loadingConfirmedProducts =>
      _loadingConfirmedProducts != null &&
      !_loadingConfirmedProducts!.isCompleted;
  bool get loading => loadingConfirmedProducts || _loadingSuggestedProducts;
  bool get performingBackendAction => _performingBackendAction;

  bool get rangeLoaded => _shopProductRange != null && _shopProductRange!.isOk;

  Result<ShopProductRange, ShopsManagerError> get loadedRangeRes =>
      _shopProductRange!;
  ShopProductRange get loadedRange => _shopProductRange!.unwrap();
  List<Product> get loadedProducts {
    return loadedRange.products
        .where((product) => product.veganStatus != VegStatus.negative)
        .toList();
  }

  List<Product> get suggestedProducts =>
      UnmodifiableListView(_suggestedProducts);
  bool get anyProductsLoaded =>
      (rangeLoaded && loadedProducts.isNotEmpty) ||
      suggestedProducts.isNotEmpty;

  UserParams get user => _userParamsController.cachedUserParams!;

  ShopProductRangePageModel(
      this._shopsManager,
      this._suggestedProductsManager,
      this._productsObtainer,
      this._userParamsController,
      this._addressObtainer,
      this._shop,
      this._updateCallback) {
    _load();
    _address = _addressObtainer.addressOfShop(_shop);
    _shopsManager.addListener(this);
  }

  void dispose() {
    _shopsManager.removeListener(this);
  }

  Future<void> _load() async {
    await loadConfirmedProducts();
    await _loadSuggestedProducts();
  }

  int lastSeenSecs(Product product) {
    return loadedRange.lastSeenSecs(product);
  }

  void reloadConfirmedProducts() async {
    // Sometimes we're asked to reload while we are already
    // loading - for such cases we want to wait for the others
    // loadings to finish, only then to load ourselves.
    while (_loadingConfirmedProducts != null) {
      await _loadingConfirmedProducts?.future;
    }
    await loadConfirmedProducts();
  }

  Future<void> loadConfirmedProducts() async {
    _loadingConfirmedProducts = Completer();
    _updateCallback.call();
    try {
      final oldProducts =
          _shopProductRange?.maybeOk()?.products.toList() ?? const [];
      _shopProductRange = await _shopsManager.fetchShopProductRange(_shop);
      // We want to sort the products by their 'last seen' property.
      //
      // But we reload the products quite often and we don't want to
      // sort them too often - we might reload the products right after
      // the user changed the 'last seen' property! (although currently it
      // shouldn't happen).
      // If we'd sort products each time we reload them, the user would
      // see them jumping around.
      //
      // To do the sorting and to avoid the jumping problem, we do 2 things:
      // 1. When a new set of products is just loaded, we memorize their
      //    barcodes and sort them.
      // 2. When the loaded set of products consists of the same barcodes as
      //    were already loaded, we update existing already loaded products
      //    we newly loaded values.
      if (_shopProductRange!.isOk) {
        final range = _shopProductRange!.unwrap();
        final newProducts = range.products.toList();
        final newBarcodes = newProducts.map((e) => e.barcode).toList();
        newBarcodes.sort();
        final productsSetChanged =
            !listEquals(newBarcodes, _lastSortedConfirmedBarcodes);
        if (productsSetChanged) {
          newProducts.sort(
              (p1, p2) => range.lastSeenSecs(p2) - range.lastSeenSecs(p1));
          _shopProductRange = Ok(loadedRange
              .rebuild((e) => e.products = ListBuilder(newProducts)));
          _lastSortedConfirmedBarcodes = newBarcodes;
        } else {
          final newProductsMap = {
            for (final product in newProducts) product.barcode: product
          };
          for (var index = 0; index < oldProducts.length; ++index) {
            final barcode = oldProducts[index].barcode;
            oldProducts[index] = newProductsMap[barcode]!;
          }
          _shopProductRange = Ok(loadedRange
              .rebuild((e) => e.products = ListBuilder(oldProducts)));
        }
      }
    } catch (e) {
      Log.w('ShopProductRangePageModel.load exception', ex: e);
      _shopProductRange = Err(ShopsManagerError.OTHER);
      rethrow;
    } finally {
      _loadingConfirmedProducts?.complete();
      _loadingConfirmedProducts = null;
      _updateCallback.call();
    }
  }

  Future<void> _loadSuggestedProducts() async {
    _loadingSuggestedProducts = true;
    try {
      final allSuggestedBarcodesRes =
          await _suggestedProductsManager.getSuggestedBarcodesFor([_shop]);
      if (allSuggestedBarcodesRes.isErr) {
        Log.w(
            'Could not load suggested products because: $allSuggestedBarcodesRes');
        return;
      }
      final allSuggestedBarcodes = allSuggestedBarcodesRes.unwrap();
      final suggestedBarcodes = allSuggestedBarcodes[_shop.osmUID];
      if (suggestedBarcodes == null || suggestedBarcodes.isEmpty) {
        return;
      }
      // TODO: take more than 20, we need to load them all somehow
      final suggestedProductsRes = await _productsObtainer
          .getProducts(suggestedBarcodes.take(20).toList());
      if (suggestedProductsRes.isErr) {
        Log.w(
            'Could not load suggested products because: $suggestedProductsRes');
        return;
      }
      _suggestedProducts.addAll(suggestedProductsRes.unwrap());
    } finally {
      _loadingSuggestedProducts = false;
      _updateCallback.call();
    }
  }

  void onProductUpdate(Product updatedProduct) {
    if (!rangeLoaded) {
      Log.w('onProductUpdate: called but we have no products range');
      return;
    }
    final products = loadedProducts.toList();
    final productToUpdate = products
        .indexWhere((product) => product.barcode == updatedProduct.barcode);
    if (productToUpdate == -1) {
      Log.e('onProductUpdate: updated product is not found. '
          'Product: $updatedProduct, all products: $products');
      return;
    }
    products[productToUpdate] = updatedProduct;
    _shopProductRange =
        Ok(loadedRange.rebuild((e) => e.products.replace(products)));
    _updateCallback.call();
  }

  Future<Result<ProductPresenceVoteResult, ShopsManagerError>>
      productPresenceVote(Product product, bool positive) async {
    _performingBackendAction = true;
    _updateCallback.call();
    try {
      return await _shopsManager.productPresenceVote(product, _shop, positive);
    } finally {
      _performingBackendAction = false;
      _updateCallback.call();
    }
  }

  FutureShortAddress address() => _address;

  @override
  void onLocalShopsChange() {
    reloadConfirmedProducts();
  }
}
