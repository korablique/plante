// Mocks generated by Mockito 5.0.10 from annotations
// in plante/test/ui/shop/shop_product_range_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:io' as _i24;
import 'dart:math' as _i11;

import 'package:flutter/src/services/message_codec.dart' as _i25;
import 'package:flutter/src/widgets/framework.dart' as _i23;
import 'package:flutter/src/widgets/navigator.dart' as _i26;
import 'package:flutter/src/widgets/routes.dart' as _i27;
import 'package:mockito/mockito.dart' as _i1;
import 'package:plante/base/permissions_manager.dart' as _i20;
import 'package:plante/base/result.dart' as _i2;
import 'package:plante/model/product.dart' as _i16;
import 'package:plante/model/shop.dart' as _i14;
import 'package:plante/model/shop_product_range.dart' as _i15;
import 'package:plante/model/shop_type.dart' as _i17;
import 'package:plante/model/user_params.dart' as _i5;
import 'package:plante/model/veg_status.dart' as _i8;
import 'package:plante/model/viewed_products_storage.dart' as _i21;
import 'package:plante/outside/backend/backend.dart' as _i3;
import 'package:plante/outside/backend/backend_error.dart' as _i6;
import 'package:plante/outside/backend/backend_product.dart' as _i7;
import 'package:plante/outside/backend/backend_products_at_shop.dart' as _i9;
import 'package:plante/outside/backend/backend_shop.dart' as _i10;
import 'package:plante/outside/map/address_obtainer.dart' as _i28;
import 'package:plante/outside/map/open_street_map.dart' as _i30;
import 'package:plante/outside/map/osm_address.dart' as _i29;
import 'package:plante/outside/map/shops_manager.dart' as _i12;
import 'package:plante/outside/map/shops_manager_types.dart' as _i13;
import 'package:plante/outside/products/products_manager.dart' as _i18;
import 'package:plante/outside/products/products_manager_error.dart' as _i19;
import 'package:plante/ui/photos_taker.dart' as _i22;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeResult<OK, ERR> extends _i1.Fake implements _i2.Result<OK, ERR> {}

/// A class which mocks [Backend].
///
/// See the documentation for Mockito's code generation for more information.
class MockBackend extends _i1.Mock implements _i3.Backend {
  MockBackend() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void addObserver(_i3.BackendObserver? observer) =>
      super.noSuchMethod(Invocation.method(#addObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  void removeObserver(_i3.BackendObserver? observer) =>
      super.noSuchMethod(Invocation.method(#removeObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<bool> isLoggedIn() =>
      (super.noSuchMethod(Invocation.method(#isLoggedIn, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<_i2.Result<_i5.UserParams, _i6.BackendError>> loginOrRegister(
          {String? googleIdToken, String? appleAuthorizationCode}) =>
      (super.noSuchMethod(
              Invocation.method(#loginOrRegister, [], {
                #googleIdToken: googleIdToken,
                #appleAuthorizationCode: appleAuthorizationCode
              }),
              returnValue:
                  Future<_i2.Result<_i5.UserParams, _i6.BackendError>>.value(
                      _FakeResult<_i5.UserParams, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i5.UserParams, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<bool, _i6.BackendError>> updateUserParams(
          _i5.UserParams? userParams,
          {String? backendClientTokenOverride}) =>
      (super.noSuchMethod(
              Invocation.method(#updateUserParams, [userParams],
                  {#backendClientTokenOverride: backendClientTokenOverride}),
              returnValue: Future<_i2.Result<bool, _i6.BackendError>>.value(
                  _FakeResult<bool, _i6.BackendError>()))
          as _i4.Future<_i2.Result<bool, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i7.BackendProduct?, _i6.BackendError>> requestProduct(
          String? barcode) =>
      (super.noSuchMethod(Invocation.method(#requestProduct, [barcode]),
          returnValue:
              Future<_i2.Result<_i7.BackendProduct?, _i6.BackendError>>.value(
                  _FakeResult<_i7.BackendProduct?, _i6.BackendError>())) as _i4
          .Future<_i2.Result<_i7.BackendProduct?, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i6.BackendError>> createUpdateProduct(
          String? barcode,
          {_i8.VegStatus? vegetarianStatus,
          _i8.VegStatus? veganStatus}) =>
      (super.noSuchMethod(
              Invocation.method(#createUpdateProduct, [
                barcode
              ], {
                #vegetarianStatus: vegetarianStatus,
                #veganStatus: veganStatus
              }),
              returnValue: Future<_i2.Result<_i2.None, _i6.BackendError>>.value(
                  _FakeResult<_i2.None, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i2.None, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i6.BackendError>> sendReport(
          String? barcode, String? reportText) =>
      (super.noSuchMethod(Invocation.method(#sendReport, [barcode, reportText]),
              returnValue: Future<_i2.Result<_i2.None, _i6.BackendError>>.value(
                  _FakeResult<_i2.None, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i2.None, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i6.BackendError>> sendProductScan(
          String? barcode) =>
      (super.noSuchMethod(Invocation.method(#sendProductScan, [barcode]),
              returnValue: Future<_i2.Result<_i2.None, _i6.BackendError>>.value(
                  _FakeResult<_i2.None, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i2.None, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i5.UserParams, _i6.BackendError>> userData() =>
      (super.noSuchMethod(Invocation.method(#userData, []),
              returnValue:
                  Future<_i2.Result<_i5.UserParams, _i6.BackendError>>.value(
                      _FakeResult<_i5.UserParams, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i5.UserParams, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<List<_i9.BackendProductsAtShop>, _i6.BackendError>>
      requestProductsAtShops(Iterable<String>? osmIds) => (super.noSuchMethod(
          Invocation.method(#requestProductsAtShops, [osmIds]),
          returnValue: Future<_i2.Result<List<_i9.BackendProductsAtShop>, _i6.BackendError>>.value(
              _FakeResult<List<_i9.BackendProductsAtShop>,
                  _i6.BackendError>())) as _i4
          .Future<_i2.Result<List<_i9.BackendProductsAtShop>, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<List<_i10.BackendShop>, _i6.BackendError>> requestShops(
          Iterable<String>? osmIds) =>
      (super.noSuchMethod(Invocation.method(#requestShops, [osmIds]),
          returnValue: Future<
                  _i2.Result<List<_i10.BackendShop>, _i6.BackendError>>.value(
              _FakeResult<List<_i10.BackendShop>, _i6.BackendError>())) as _i4
          .Future<_i2.Result<List<_i10.BackendShop>, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i6.BackendError>> productPresenceVote(
          String? barcode, String? osmId, bool? positive) =>
      (super.noSuchMethod(
          Invocation.method(#productPresenceVote, [barcode, osmId, positive]),
          returnValue: Future<_i2.Result<_i2.None, _i6.BackendError>>.value(
              _FakeResult<_i2.None, _i6.BackendError>())) as _i4
          .Future<_i2.Result<_i2.None, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i6.BackendError>> putProductToShop(
          String? barcode, String? osmId) =>
      (super.noSuchMethod(
              Invocation.method(#putProductToShop, [barcode, osmId]),
              returnValue: Future<_i2.Result<_i2.None, _i6.BackendError>>.value(
                  _FakeResult<_i2.None, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i2.None, _i6.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i10.BackendShop, _i6.BackendError>> createShop(
          {String? name, _i11.Point<double>? coords, String? type}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #createShop, [], {#name: name, #coords: coords, #type: type}),
              returnValue:
                  Future<_i2.Result<_i10.BackendShop, _i6.BackendError>>.value(
                      _FakeResult<_i10.BackendShop, _i6.BackendError>()))
          as _i4.Future<_i2.Result<_i10.BackendShop, _i6.BackendError>>);
}

/// A class which mocks [ShopsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockShopsManager extends _i1.Mock implements _i12.ShopsManager {
  MockShopsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get loadedAreasCount =>
      (super.noSuchMethod(Invocation.getter(#loadedAreasCount), returnValue: 0)
          as int);
  @override
  void addListener(_i13.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i13.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<_i2.Result<Map<String, _i14.Shop>, _i13.ShopsManagerError>> fetchShops(
          _i11.Point<double>? northeast, _i11.Point<double>? southwest) =>
      (super.noSuchMethod(Invocation.method(#fetchShops, [northeast, southwest]),
          returnValue:
              Future<_i2.Result<Map<String, _i14.Shop>, _i13.ShopsManagerError>>.value(
                  _FakeResult<Map<String, _i14.Shop>,
                      _i13.ShopsManagerError>())) as _i4
          .Future<_i2.Result<Map<String, _i14.Shop>, _i13.ShopsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i15.ShopProductRange, _i13.ShopsManagerError>>
      fetchShopProductRange(_i14.Shop? shop, {bool? noCache = false}) => (super
          .noSuchMethod(
              Invocation.method(
                  #fetchShopProductRange, [shop], {#noCache: noCache}),
              returnValue:
                  Future<_i2.Result<_i15.ShopProductRange, _i13.ShopsManagerError>>.value(
                      _FakeResult<_i15.ShopProductRange, _i13.ShopsManagerError>())) as _i4
          .Future<_i2.Result<_i15.ShopProductRange, _i13.ShopsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i13.ShopsManagerError>> putProductToShops(
          _i16.Product? product, List<_i14.Shop>? shops) =>
      (super.noSuchMethod(
              Invocation.method(#putProductToShops, [product, shops]),
              returnValue:
                  Future<_i2.Result<_i2.None, _i13.ShopsManagerError>>.value(
                      _FakeResult<_i2.None, _i13.ShopsManagerError>()))
          as _i4.Future<_i2.Result<_i2.None, _i13.ShopsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i14.Shop, _i13.ShopsManagerError>> createShop(
          {String? name, _i11.Point<double>? coords, _i17.ShopType? type}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #createShop, [], {#name: name, #coords: coords, #type: type}),
              returnValue:
                  Future<_i2.Result<_i14.Shop, _i13.ShopsManagerError>>.value(
                      _FakeResult<_i14.Shop, _i13.ShopsManagerError>()))
          as _i4.Future<_i2.Result<_i14.Shop, _i13.ShopsManagerError>>);
}

/// A class which mocks [ProductsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductsManager extends _i1.Mock implements _i18.ProductsManager {
  MockProductsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i16.Product?, _i19.ProductsManagerError>> getProduct(
          String? barcodeRaw,
          [String? langCode]) =>
      (super.noSuchMethod(Invocation.method(#getProduct, [barcodeRaw, langCode]),
          returnValue: Future<
                  _i2.Result<_i16.Product?, _i19.ProductsManagerError>>.value(
              _FakeResult<_i16.Product?, _i19.ProductsManagerError>())) as _i4
          .Future<_i2.Result<_i16.Product?, _i19.ProductsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i16.Product?, _i19.ProductsManagerError>> inflate(
          _i7.BackendProduct? backendProduct,
          [String? langCode]) =>
      (super.noSuchMethod(Invocation.method(#inflate, [backendProduct, langCode]),
          returnValue: Future<
                  _i2.Result<_i16.Product?, _i19.ProductsManagerError>>.value(
              _FakeResult<_i16.Product?, _i19.ProductsManagerError>())) as _i4
          .Future<_i2.Result<_i16.Product?, _i19.ProductsManagerError>>);
  @override
  _i4.Future<
      _i2.Result<_i16.Product, _i19.ProductsManagerError>> createUpdateProduct(
          _i16.Product? product,
          [String? langCode]) =>
      (super.noSuchMethod(
          Invocation.method(#createUpdateProduct, [product, langCode]),
          returnValue:
              Future<_i2.Result<_i16.Product, _i19.ProductsManagerError>>.value(
                  _FakeResult<_i16.Product, _i19.ProductsManagerError>())) as _i4
          .Future<_i2.Result<_i16.Product, _i19.ProductsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i18.ProductWithOCRIngredients, _i19.ProductsManagerError>>
      updateProductAndExtractIngredients(_i16.Product? product, [String? langCode]) =>
          (super.noSuchMethod(
              Invocation.method(
                  #updateProductAndExtractIngredients, [product, langCode]),
              returnValue: Future<_i2.Result<_i18.ProductWithOCRIngredients, _i19.ProductsManagerError>>.value(
                  _FakeResult<_i18.ProductWithOCRIngredients, _i19.ProductsManagerError>())) as _i4
              .Future<_i2.Result<_i18.ProductWithOCRIngredients, _i19.ProductsManagerError>>);
}

/// A class which mocks [PermissionsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockPermissionsManager extends _i1.Mock
    implements _i20.PermissionsManager {
  MockPermissionsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i20.PermissionState> status(_i20.PermissionKind? permission) =>
      (super.noSuchMethod(Invocation.method(#status, [permission]),
              returnValue: Future<_i20.PermissionState>.value(
                  _i20.PermissionState.granted))
          as _i4.Future<_i20.PermissionState>);
  @override
  _i4.Future<_i20.PermissionState> request(_i20.PermissionKind? permission) =>
      (super.noSuchMethod(Invocation.method(#request, [permission]),
              returnValue: Future<_i20.PermissionState>.value(
                  _i20.PermissionState.granted))
          as _i4.Future<_i20.PermissionState>);
  @override
  _i4.Future<bool> openAppSettings() =>
      (super.noSuchMethod(Invocation.method(#openAppSettings, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}

/// A class which mocks [ViewedProductsStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockViewedProductsStorage extends _i1.Mock
    implements _i21.ViewedProductsStorage {
  MockViewedProductsStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<void> updates() =>
      (super.noSuchMethod(Invocation.method(#updates, []),
          returnValue: Stream<void>.empty()) as _i4.Stream<void>);
  @override
  _i4.Future<void> loadPersistentProductsForTesting() => (super.noSuchMethod(
      Invocation.method(#loadPersistentProductsForTesting, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future.value()) as _i4.Future<void>);
  @override
  List<_i16.Product> getProducts() =>
      (super.noSuchMethod(Invocation.method(#getProducts, []),
          returnValue: <_i16.Product>[]) as List<_i16.Product>);
  @override
  void addProduct(_i16.Product? product) =>
      super.noSuchMethod(Invocation.method(#addProduct, [product]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<void> purgeForTesting() =>
      (super.noSuchMethod(Invocation.method(#purgeForTesting, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i4.Future<void>);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [PhotosTaker].
///
/// See the documentation for Mockito's code generation for more information.
class MockPhotosTaker extends _i1.Mock implements _i22.PhotosTaker {
  MockPhotosTaker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<Uri?> takeAndCropPhoto(
          _i23.BuildContext? context, _i24.Directory? outFolder) =>
      (super.noSuchMethod(
          Invocation.method(#takeAndCropPhoto, [context, outFolder]),
          returnValue: Future<Uri?>.value()) as _i4.Future<Uri?>);
  @override
  _i4.Future<Uri?> cropPhoto(String? photoPath, _i23.BuildContext? context,
          _i24.Directory? outFolder) =>
      (super.noSuchMethod(
          Invocation.method(#cropPhoto, [photoPath, context, outFolder]),
          returnValue: Future<Uri?>.value()) as _i4.Future<Uri?>);
  @override
  _i4.Future<_i2.Result<Uri, _i25.PlatformException>?> retrieveLostPhoto() =>
      (super.noSuchMethod(Invocation.method(#retrieveLostPhoto, []),
              returnValue:
                  Future<_i2.Result<Uri, _i25.PlatformException>?>.value())
          as _i4.Future<_i2.Result<Uri, _i25.PlatformException>?>);
}

/// A class which mocks [RouteObserver].
///
/// See the documentation for Mockito's code generation for more information.
class MockRouteObserver<R extends _i26.Route<dynamic>> extends _i1.Mock
    implements _i27.RouteObserver<R> {
  MockRouteObserver() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void subscribe(_i27.RouteAware? routeAware, R? route) =>
      super.noSuchMethod(Invocation.method(#subscribe, [routeAware, route]),
          returnValueForMissingStub: null);
  @override
  void unsubscribe(_i27.RouteAware? routeAware) =>
      super.noSuchMethod(Invocation.method(#unsubscribe, [routeAware]),
          returnValueForMissingStub: null);
  @override
  void didPop(_i26.Route<dynamic>? route, _i26.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(Invocation.method(#didPop, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didPush(
          _i26.Route<dynamic>? route, _i26.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(Invocation.method(#didPush, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didRemove(
          _i26.Route<dynamic>? route, _i26.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(Invocation.method(#didRemove, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didReplace(
          {_i26.Route<dynamic>? newRoute, _i26.Route<dynamic>? oldRoute}) =>
      super.noSuchMethod(
          Invocation.method(
              #didReplace, [], {#newRoute: newRoute, #oldRoute: oldRoute}),
          returnValueForMissingStub: null);
  @override
  void didStartUserGesture(
          _i26.Route<dynamic>? route, _i26.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(
          Invocation.method(#didStartUserGesture, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didStopUserGesture() =>
      super.noSuchMethod(Invocation.method(#didStopUserGesture, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [AddressObtainer].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddressObtainer extends _i1.Mock implements _i28.AddressObtainer {
  MockAddressObtainer() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i29.OsmAddress, _i30.OpenStreetMapError>>
      addressOfShop(_i14.Shop? shop) => (super.noSuchMethod(
          Invocation.method(#addressOfShop, [shop]),
          returnValue: Future<
                  _i2.Result<_i29.OsmAddress, _i30.OpenStreetMapError>>.value(
              _FakeResult<_i29.OsmAddress, _i30.OpenStreetMapError>())) as _i4
          .Future<_i2.Result<_i29.OsmAddress, _i30.OpenStreetMapError>>);
}
