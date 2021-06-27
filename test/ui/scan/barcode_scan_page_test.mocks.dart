// Mocks generated by Mockito 5.0.10 from annotations
// in plante/test/ui/scan/barcode_scan_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:io' as _i28;
import 'dart:math' as _i14;

import 'package:flutter/src/services/message_codec.dart' as _i29;
import 'package:flutter/src/widgets/framework.dart' as _i27;
import 'package:flutter/src/widgets/navigator.dart' as _i15;
import 'package:flutter/src/widgets/routes.dart' as _i16;
import 'package:mockito/mockito.dart' as _i1;
import 'package:plante/base/base.dart' as _i25;
import 'package:plante/base/permissions_manager.dart' as _i17;
import 'package:plante/base/result.dart' as _i2;
import 'package:plante/location/location_controller.dart' as _i24;
import 'package:plante/model/product.dart' as _i5;
import 'package:plante/model/shop.dart' as _i21;
import 'package:plante/model/shop_product_range.dart' as _i22;
import 'package:plante/model/shop_type.dart' as _i23;
import 'package:plante/model/user_params.dart' as _i9;
import 'package:plante/model/veg_status.dart' as _i11;
import 'package:plante/model/viewed_products_storage.dart' as _i18;
import 'package:plante/outside/backend/backend.dart' as _i8;
import 'package:plante/outside/backend/backend_error.dart' as _i10;
import 'package:plante/outside/backend/backend_product.dart' as _i7;
import 'package:plante/outside/backend/backend_products_at_shop.dart' as _i12;
import 'package:plante/outside/backend/backend_shop.dart' as _i13;
import 'package:plante/outside/map/shops_manager.dart' as _i19;
import 'package:plante/outside/map/shops_manager_types.dart' as _i20;
import 'package:plante/outside/products/products_manager.dart' as _i3;
import 'package:plante/outside/products/products_manager_error.dart' as _i6;
import 'package:plante/ui/photos_taker.dart' as _i26;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeResult<OK, ERR> extends _i1.Fake implements _i2.Result<OK, ERR> {}

/// A class which mocks [ProductsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductsManager extends _i1.Mock implements _i3.ProductsManager {
  MockProductsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>> getProduct(
          String? barcodeRaw,
          [String? langCode]) =>
      (super.noSuchMethod(
          Invocation.method(#getProduct, [barcodeRaw, langCode]),
          returnValue:
              Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>>.value(
                  _FakeResult<_i5.Product?, _i6.ProductsManagerError>())) as _i4
          .Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>> inflate(
          _i7.BackendProduct? backendProduct,
          [String? langCode]) =>
      (super.noSuchMethod(
          Invocation.method(#inflate, [backendProduct, langCode]),
          returnValue:
              Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>>.value(
                  _FakeResult<_i5.Product?, _i6.ProductsManagerError>())) as _i4
          .Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>>);
  @override
  _i4.Future<
      _i2.Result<_i5.Product, _i6.ProductsManagerError>> createUpdateProduct(
          _i5.Product? product,
          [String? langCode]) =>
      (super.noSuchMethod(
          Invocation.method(#createUpdateProduct, [product, langCode]),
          returnValue:
              Future<_i2.Result<_i5.Product, _i6.ProductsManagerError>>.value(
                  _FakeResult<_i5.Product, _i6.ProductsManagerError>())) as _i4
          .Future<_i2.Result<_i5.Product, _i6.ProductsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>>
      updateProductAndExtractIngredients(_i5.Product? product, [String? langCode]) =>
          (super.noSuchMethod(
              Invocation.method(
                  #updateProductAndExtractIngredients, [product, langCode]),
              returnValue:
                  Future<_i2.Result<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>>.value(
                      _FakeResult<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>())) as _i4
              .Future<_i2.Result<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>>);
}

/// A class which mocks [Backend].
///
/// See the documentation for Mockito's code generation for more information.
class MockBackend extends _i1.Mock implements _i8.Backend {
  MockBackend() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void addObserver(_i8.BackendObserver? observer) =>
      super.noSuchMethod(Invocation.method(#addObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  void removeObserver(_i8.BackendObserver? observer) =>
      super.noSuchMethod(Invocation.method(#removeObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<bool> isLoggedIn() =>
      (super.noSuchMethod(Invocation.method(#isLoggedIn, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<_i2.Result<_i9.UserParams, _i10.BackendError>> loginOrRegister(
          {String? googleIdToken, String? appleAuthorizationCode}) =>
      (super.noSuchMethod(
              Invocation.method(#loginOrRegister, [], {
                #googleIdToken: googleIdToken,
                #appleAuthorizationCode: appleAuthorizationCode
              }),
              returnValue:
                  Future<_i2.Result<_i9.UserParams, _i10.BackendError>>.value(
                      _FakeResult<_i9.UserParams, _i10.BackendError>()))
          as _i4.Future<_i2.Result<_i9.UserParams, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<bool, _i10.BackendError>> updateUserParams(
          _i9.UserParams? userParams,
          {String? backendClientTokenOverride}) =>
      (super.noSuchMethod(
              Invocation.method(#updateUserParams, [userParams],
                  {#backendClientTokenOverride: backendClientTokenOverride}),
              returnValue: Future<_i2.Result<bool, _i10.BackendError>>.value(
                  _FakeResult<bool, _i10.BackendError>()))
          as _i4.Future<_i2.Result<bool, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i7.BackendProduct?, _i10.BackendError>> requestProduct(
          String? barcode) =>
      (super.noSuchMethod(Invocation.method(#requestProduct, [barcode]),
          returnValue:
              Future<_i2.Result<_i7.BackendProduct?, _i10.BackendError>>.value(
                  _FakeResult<_i7.BackendProduct?, _i10.BackendError>())) as _i4
          .Future<_i2.Result<_i7.BackendProduct?, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i10.BackendError>> createUpdateProduct(
          String? barcode,
          {_i11.VegStatus? vegetarianStatus,
          _i11.VegStatus? veganStatus}) =>
      (super.noSuchMethod(
          Invocation.method(#createUpdateProduct, [barcode],
              {#vegetarianStatus: vegetarianStatus, #veganStatus: veganStatus}),
          returnValue: Future<_i2.Result<_i2.None, _i10.BackendError>>.value(
              _FakeResult<_i2.None, _i10.BackendError>())) as _i4
          .Future<_i2.Result<_i2.None, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i10.BackendError>> sendReport(
          String? barcode, String? reportText) =>
      (super.noSuchMethod(Invocation.method(#sendReport, [barcode, reportText]),
          returnValue: Future<_i2.Result<_i2.None, _i10.BackendError>>.value(
              _FakeResult<_i2.None, _i10.BackendError>())) as _i4
          .Future<_i2.Result<_i2.None, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i10.BackendError>> sendProductScan(
          String? barcode) =>
      (super.noSuchMethod(Invocation.method(#sendProductScan, [barcode]),
          returnValue: Future<_i2.Result<_i2.None, _i10.BackendError>>.value(
              _FakeResult<_i2.None, _i10.BackendError>())) as _i4
          .Future<_i2.Result<_i2.None, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i9.UserParams, _i10.BackendError>> userData() =>
      (super.noSuchMethod(Invocation.method(#userData, []),
              returnValue:
                  Future<_i2.Result<_i9.UserParams, _i10.BackendError>>.value(
                      _FakeResult<_i9.UserParams, _i10.BackendError>()))
          as _i4.Future<_i2.Result<_i9.UserParams, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<List<_i12.BackendProductsAtShop>, _i10.BackendError>>
      requestProductsAtShops(Iterable<String>? osmIds) => (super.noSuchMethod(
          Invocation.method(#requestProductsAtShops, [osmIds]),
          returnValue: Future<_i2.Result<List<_i12.BackendProductsAtShop>, _i10.BackendError>>.value(
              _FakeResult<List<_i12.BackendProductsAtShop>,
                  _i10.BackendError>())) as _i4
          .Future<_i2.Result<List<_i12.BackendProductsAtShop>, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<List<_i13.BackendShop>, _i10.BackendError>>
      requestShops(Iterable<String>? osmIds) => (super.noSuchMethod(
          Invocation.method(#requestShops, [osmIds]),
          returnValue: Future<
                  _i2.Result<List<_i13.BackendShop>, _i10.BackendError>>.value(
              _FakeResult<List<_i13.BackendShop>, _i10.BackendError>())) as _i4
          .Future<_i2.Result<List<_i13.BackendShop>, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i10.BackendError>> productPresenceVote(
          String? barcode, String? osmId, bool? positive) =>
      (super.noSuchMethod(
          Invocation.method(#productPresenceVote, [barcode, osmId, positive]),
          returnValue: Future<_i2.Result<_i2.None, _i10.BackendError>>.value(
              _FakeResult<_i2.None, _i10.BackendError>())) as _i4
          .Future<_i2.Result<_i2.None, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i10.BackendError>> putProductToShop(
          String? barcode, String? osmId) =>
      (super.noSuchMethod(
          Invocation.method(#putProductToShop, [barcode, osmId]),
          returnValue: Future<_i2.Result<_i2.None, _i10.BackendError>>.value(
              _FakeResult<_i2.None, _i10.BackendError>())) as _i4
          .Future<_i2.Result<_i2.None, _i10.BackendError>>);
  @override
  _i4.Future<_i2.Result<_i13.BackendShop, _i10.BackendError>> createShop(
          {String? name, _i14.Point<double>? coords, String? type}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #createShop, [], {#name: name, #coords: coords, #type: type}),
              returnValue:
                  Future<_i2.Result<_i13.BackendShop, _i10.BackendError>>.value(
                      _FakeResult<_i13.BackendShop, _i10.BackendError>()))
          as _i4.Future<_i2.Result<_i13.BackendShop, _i10.BackendError>>);
}

/// A class which mocks [RouteObserver].
///
/// See the documentation for Mockito's code generation for more information.
class MockRouteObserver<R extends _i15.Route<dynamic>> extends _i1.Mock
    implements _i16.RouteObserver<R> {
  MockRouteObserver() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void subscribe(_i16.RouteAware? routeAware, R? route) =>
      super.noSuchMethod(Invocation.method(#subscribe, [routeAware, route]),
          returnValueForMissingStub: null);
  @override
  void unsubscribe(_i16.RouteAware? routeAware) =>
      super.noSuchMethod(Invocation.method(#unsubscribe, [routeAware]),
          returnValueForMissingStub: null);
  @override
  void didPop(_i15.Route<dynamic>? route, _i15.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(Invocation.method(#didPop, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didPush(
          _i15.Route<dynamic>? route, _i15.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(Invocation.method(#didPush, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didRemove(
          _i15.Route<dynamic>? route, _i15.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(Invocation.method(#didRemove, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didReplace(
          {_i15.Route<dynamic>? newRoute, _i15.Route<dynamic>? oldRoute}) =>
      super.noSuchMethod(
          Invocation.method(
              #didReplace, [], {#newRoute: newRoute, #oldRoute: oldRoute}),
          returnValueForMissingStub: null);
  @override
  void didStartUserGesture(
          _i15.Route<dynamic>? route, _i15.Route<dynamic>? previousRoute) =>
      super.noSuchMethod(
          Invocation.method(#didStartUserGesture, [route, previousRoute]),
          returnValueForMissingStub: null);
  @override
  void didStopUserGesture() =>
      super.noSuchMethod(Invocation.method(#didStopUserGesture, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [PermissionsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockPermissionsManager extends _i1.Mock
    implements _i17.PermissionsManager {
  MockPermissionsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i17.PermissionState> status(_i17.PermissionKind? permission) =>
      (super.noSuchMethod(Invocation.method(#status, [permission]),
              returnValue: Future<_i17.PermissionState>.value(
                  _i17.PermissionState.granted))
          as _i4.Future<_i17.PermissionState>);
  @override
  _i4.Future<_i17.PermissionState> request(_i17.PermissionKind? permission) =>
      (super.noSuchMethod(Invocation.method(#request, [permission]),
              returnValue: Future<_i17.PermissionState>.value(
                  _i17.PermissionState.granted))
          as _i4.Future<_i17.PermissionState>);
  @override
  _i4.Future<bool> openAppSettings() =>
      (super.noSuchMethod(Invocation.method(#openAppSettings, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}

/// A class which mocks [ViewedProductsStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockViewedProductsStorage extends _i1.Mock
    implements _i18.ViewedProductsStorage {
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
  List<_i5.Product> getProducts() =>
      (super.noSuchMethod(Invocation.method(#getProducts, []),
          returnValue: <_i5.Product>[]) as List<_i5.Product>);
  @override
  void addProduct(_i5.Product? product) =>
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

/// A class which mocks [ShopsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockShopsManager extends _i1.Mock implements _i19.ShopsManager {
  MockShopsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get loadedAreasCount =>
      (super.noSuchMethod(Invocation.getter(#loadedAreasCount), returnValue: 0)
          as int);
  @override
  void addListener(_i20.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i20.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<_i2.Result<Map<String, _i21.Shop>, _i20.ShopsManagerError>> fetchShops(
          _i14.Point<double>? northeast, _i14.Point<double>? southwest) =>
      (super.noSuchMethod(Invocation.method(#fetchShops, [northeast, southwest]),
          returnValue:
              Future<_i2.Result<Map<String, _i21.Shop>, _i20.ShopsManagerError>>.value(
                  _FakeResult<Map<String, _i21.Shop>,
                      _i20.ShopsManagerError>())) as _i4
          .Future<_i2.Result<Map<String, _i21.Shop>, _i20.ShopsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i22.ShopProductRange, _i20.ShopsManagerError>>
      fetchShopProductRange(_i21.Shop? shop, {bool? noCache = false}) => (super
          .noSuchMethod(
              Invocation.method(
                  #fetchShopProductRange, [shop], {#noCache: noCache}),
              returnValue:
                  Future<_i2.Result<_i22.ShopProductRange, _i20.ShopsManagerError>>.value(
                      _FakeResult<_i22.ShopProductRange, _i20.ShopsManagerError>())) as _i4
          .Future<_i2.Result<_i22.ShopProductRange, _i20.ShopsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i2.None, _i20.ShopsManagerError>> putProductToShops(
          _i5.Product? product, List<_i21.Shop>? shops) =>
      (super.noSuchMethod(
              Invocation.method(#putProductToShops, [product, shops]),
              returnValue:
                  Future<_i2.Result<_i2.None, _i20.ShopsManagerError>>.value(
                      _FakeResult<_i2.None, _i20.ShopsManagerError>()))
          as _i4.Future<_i2.Result<_i2.None, _i20.ShopsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i21.Shop, _i20.ShopsManagerError>> createShop(
          {String? name, _i14.Point<double>? coords, _i23.ShopType? type}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #createShop, [], {#name: name, #coords: coords, #type: type}),
              returnValue:
                  Future<_i2.Result<_i21.Shop, _i20.ShopsManagerError>>.value(
                      _FakeResult<_i21.Shop, _i20.ShopsManagerError>()))
          as _i4.Future<_i2.Result<_i21.Shop, _i20.ShopsManagerError>>);
}

/// A class which mocks [LocationController].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationController extends _i1.Mock
    implements _i24.LocationController {
  MockLocationController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i14.Point<double>?> lastKnownPosition() =>
      (super.noSuchMethod(Invocation.method(#lastKnownPosition, []),
              returnValue: Future<_i14.Point<double>?>.value())
          as _i4.Future<_i14.Point<double>?>);
  @override
  _i4.Future<_i14.Point<double>?> currentPosition() =>
      (super.noSuchMethod(Invocation.method(#currentPosition, []),
              returnValue: Future<_i14.Point<double>?>.value())
          as _i4.Future<_i14.Point<double>?>);
  @override
  void callWhenLastPositionKnown(
          _i25.ArgCallback<_i14.Point<double>>? callback) =>
      super.noSuchMethod(
          Invocation.method(#callWhenLastPositionKnown, [callback]),
          returnValueForMissingStub: null);
}

/// A class which mocks [PhotosTaker].
///
/// See the documentation for Mockito's code generation for more information.
class MockPhotosTaker extends _i1.Mock implements _i26.PhotosTaker {
  MockPhotosTaker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<Uri?> takeAndCropPhoto(
          _i27.BuildContext? context, _i28.Directory? outFolder) =>
      (super.noSuchMethod(
          Invocation.method(#takeAndCropPhoto, [context, outFolder]),
          returnValue: Future<Uri?>.value()) as _i4.Future<Uri?>);
  @override
  _i4.Future<Uri?> cropPhoto(String? photoPath, _i27.BuildContext? context,
          _i28.Directory? outFolder) =>
      (super.noSuchMethod(
          Invocation.method(#cropPhoto, [photoPath, context, outFolder]),
          returnValue: Future<Uri?>.value()) as _i4.Future<Uri?>);
  @override
  _i4.Future<_i2.Result<Uri, _i29.PlatformException>?> retrieveLostPhoto() =>
      (super.noSuchMethod(Invocation.method(#retrieveLostPhoto, []),
              returnValue:
                  Future<_i2.Result<Uri, _i29.PlatformException>?>.value())
          as _i4.Future<_i2.Result<Uri, _i29.PlatformException>?>);
}
