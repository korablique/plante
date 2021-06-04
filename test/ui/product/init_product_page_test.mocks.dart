// Mocks generated by Mockito 5.0.3 from annotations
// in plante/test/ui/product/init_product_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:math' as _i3;

import 'package:flutter/src/widgets/framework.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart'
    as _i15;
import 'package:plante/base/result.dart' as _i2;
import 'package:plante/model/location_controller.dart' as _i14;
import 'package:plante/model/product.dart' as _i6;
import 'package:plante/model/shop.dart' as _i12;
import 'package:plante/model/shop_product_range.dart' as _i13;
import 'package:plante/outside/backend/backend_product.dart' as _i8;
import 'package:plante/outside/map/shops_manager.dart' as _i11;
import 'package:plante/outside/products/products_manager.dart' as _i4;
import 'package:plante/outside/products/products_manager_error.dart' as _i7;
import 'package:plante/ui/photos_taker.dart' as _i9;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeResult<OK, ERR> extends _i1.Fake implements _i2.Result<OK, ERR> {}

class _FakeUri extends _i1.Fake implements Uri {}

class _FakePoint<T extends num> extends _i1.Fake implements _i3.Point<T> {}

/// A class which mocks [ProductsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductsManager extends _i1.Mock implements _i4.ProductsManager {
  MockProductsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Result<_i6.Product?, _i7.ProductsManagerError>> getProduct(
          String? barcodeRaw,
          [String? langCode]) =>
      (super.noSuchMethod(
              Invocation.method(#getProduct, [barcodeRaw, langCode]),
              returnValue: Future.value(
                  _FakeResult<_i6.Product?, _i7.ProductsManagerError>()))
          as _i5.Future<_i2.Result<_i6.Product?, _i7.ProductsManagerError>>);
  @override
  _i5.Future<_i2.Result<_i6.Product?, _i7.ProductsManagerError>> inflate(
          _i8.BackendProduct? backendProduct,
          [String? langCode]) =>
      (super.noSuchMethod(
              Invocation.method(#inflate, [backendProduct, langCode]),
              returnValue: Future.value(
                  _FakeResult<_i6.Product?, _i7.ProductsManagerError>()))
          as _i5.Future<_i2.Result<_i6.Product?, _i7.ProductsManagerError>>);
  @override
  _i5.Future<_i2.Result<_i6.Product, _i7.ProductsManagerError>>
      createUpdateProduct(_i6.Product? product, [String? langCode]) => (super
              .noSuchMethod(
                  Invocation.method(#createUpdateProduct, [product, langCode]),
                  returnValue: Future.value(
                      _FakeResult<_i6.Product, _i7.ProductsManagerError>()))
          as _i5.Future<_i2.Result<_i6.Product, _i7.ProductsManagerError>>);
  @override
  _i5.Future<_i2.Result<_i4.ProductWithOCRIngredients, _i7.ProductsManagerError>>
      updateProductAndExtractIngredients(_i6.Product? product,
              [String? langCode]) =>
          (super.noSuchMethod(
              Invocation.method(
                  #updateProductAndExtractIngredients, [product, langCode]),
              returnValue: Future.value(
                  _FakeResult<_i4.ProductWithOCRIngredients, _i7.ProductsManagerError>())) as _i5
              .Future<_i2.Result<_i4.ProductWithOCRIngredients, _i7.ProductsManagerError>>);
}

/// A class which mocks [PhotosTaker].
///
/// See the documentation for Mockito's code generation for more information.
class MockPhotosTaker extends _i1.Mock implements _i9.PhotosTaker {
  MockPhotosTaker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<Uri?> takeAndCropPhoto(_i10.BuildContext? context) =>
      (super.noSuchMethod(Invocation.method(#takeAndCropPhoto, [context]),
          returnValue: Future.value(_FakeUri())) as _i5.Future<Uri?>);
}

/// A class which mocks [ShopsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockShopsManager extends _i1.Mock implements _i11.ShopsManager {
  MockShopsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void addListener(_i11.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i11.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<
      _i2.Result<Map<String, _i12.Shop>, _i11.ShopsManagerError>> fetchShops(
          _i3.Point<double>? northeast, _i3.Point<double>? southwest) =>
      (super.noSuchMethod(
          Invocation.method(#fetchShops, [northeast, southwest]),
          returnValue: Future.value(
              _FakeResult<Map<String, _i12.Shop>, _i11.ShopsManagerError>())) as _i5
          .Future<_i2.Result<Map<String, _i12.Shop>, _i11.ShopsManagerError>>);
  @override
  _i5.Future<_i2.Result<_i13.ShopProductRange, _i11.ShopsManagerError>>
      fetchShopProductRange(_i12.Shop? shop) => (super.noSuchMethod(
              Invocation.method(#fetchShopProductRange, [shop]),
              returnValue: Future.value(
                  _FakeResult<_i13.ShopProductRange, _i11.ShopsManagerError>()))
          as _i5.Future<
              _i2.Result<_i13.ShopProductRange, _i11.ShopsManagerError>>);
  @override
  _i5.Future<_i2.Result<_i2.None, _i11.ShopsManagerError>> putProductToShops(
          _i6.Product? product, List<_i12.Shop>? shops) =>
      (super.noSuchMethod(
              Invocation.method(#putProductToShops, [product, shops]),
              returnValue:
                  Future.value(_FakeResult<_i2.None, _i11.ShopsManagerError>()))
          as _i5.Future<_i2.Result<_i2.None, _i11.ShopsManagerError>>);
}

/// A class which mocks [LocationController].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationController extends _i1.Mock
    implements _i14.LocationController {
  MockLocationController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i15.PermissionStatus> permissionStatus() =>
      (super.noSuchMethod(Invocation.method(#permissionStatus, []),
              returnValue: Future.value(_i15.PermissionStatus.granted))
          as _i5.Future<_i15.PermissionStatus>);
  @override
  _i5.Future<_i15.PermissionStatus> requestPermission() =>
      (super.noSuchMethod(Invocation.method(#requestPermission, []),
              returnValue: Future.value(_i15.PermissionStatus.granted))
          as _i5.Future<_i15.PermissionStatus>);
  @override
  _i5.Future<_i3.Point<double>?> lastKnownPosition() =>
      (super.noSuchMethod(Invocation.method(#lastKnownPosition, []),
              returnValue: Future.value(_FakePoint<double>()))
          as _i5.Future<_i3.Point<double>?>);
  @override
  _i5.Future<_i3.Point<double>?> currentPosition() =>
      (super.noSuchMethod(Invocation.method(#currentPosition, []),
              returnValue: Future.value(_FakePoint<double>()))
          as _i5.Future<_i3.Point<double>?>);
}
