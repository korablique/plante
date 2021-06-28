// Mocks generated by Mockito 5.0.10 from annotations
// in plante/test/ui/map/map_page_modes_test_commons.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:math' as _i10;
import 'dart:typed_data' as _i20;

import 'package:google_maps_flutter/google_maps_flutter.dart' as _i16;
import 'package:google_maps_flutter_platform_interface/src/types/camera.dart'
    as _i18;
import 'package:google_maps_flutter_platform_interface/src/types/location.dart'
    as _i3;
import 'package:google_maps_flutter_platform_interface/src/types/marker.dart'
    as _i19;
import 'package:google_maps_flutter_platform_interface/src/types/screen_coordinate.dart'
    as _i4;
import 'package:google_maps_flutter_platform_interface/src/types/tile_overlay.dart'
    as _i17;
import 'package:mockito/mockito.dart' as _i1;
import 'package:plante/base/base.dart' as _i15;
import 'package:plante/base/permissions_manager.dart' as _i5;
import 'package:plante/base/result.dart' as _i2;
import 'package:plante/location/location_controller.dart' as _i14;
import 'package:plante/model/product.dart' as _i12;
import 'package:plante/model/shop.dart' as _i9;
import 'package:plante/model/shop_product_range.dart' as _i11;
import 'package:plante/model/shop_type.dart' as _i13;
import 'package:plante/outside/map/address_obtainer.dart' as _i22;
import 'package:plante/outside/map/open_street_map.dart' as _i24;
import 'package:plante/outside/map/osm_address.dart' as _i23;
import 'package:plante/outside/map/shops_manager.dart' as _i7;
import 'package:plante/outside/map/shops_manager_types.dart' as _i8;
import 'package:plante/ui/map/latest_camera_pos_storage.dart' as _i21;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeResult<OK, ERR> extends _i1.Fake implements _i2.Result<OK, ERR> {}

class _FakeLatLngBounds extends _i1.Fake implements _i3.LatLngBounds {
  @override
  String toString() => super.toString();
}

class _FakeScreenCoordinate extends _i1.Fake implements _i4.ScreenCoordinate {
  @override
  String toString() => super.toString();
}

class _FakeLatLng extends _i1.Fake implements _i3.LatLng {
  @override
  String toString() => super.toString();
}

/// A class which mocks [PermissionsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockPermissionsManager extends _i1.Mock
    implements _i5.PermissionsManager {
  MockPermissionsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i5.PermissionState> status(_i5.PermissionKind? permission) =>
      (super.noSuchMethod(Invocation.method(#status, [permission]),
          returnValue: Future<_i5.PermissionState>.value(
              _i5.PermissionState.granted)) as _i6.Future<_i5.PermissionState>);
  @override
  _i6.Future<_i5.PermissionState> request(_i5.PermissionKind? permission) =>
      (super.noSuchMethod(Invocation.method(#request, [permission]),
          returnValue: Future<_i5.PermissionState>.value(
              _i5.PermissionState.granted)) as _i6.Future<_i5.PermissionState>);
  @override
  _i6.Future<bool> openAppSettings() =>
      (super.noSuchMethod(Invocation.method(#openAppSettings, []),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
}

/// A class which mocks [ShopsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockShopsManager extends _i1.Mock implements _i7.ShopsManager {
  MockShopsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get loadedAreasCount =>
      (super.noSuchMethod(Invocation.getter(#loadedAreasCount), returnValue: 0)
          as int);
  @override
  void addListener(_i8.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i8.ShopsManagerListener? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  _i6.Future<_i2.Result<Map<String, _i9.Shop>, _i8.ShopsManagerError>> fetchShops(
          _i10.Point<double>? northeast, _i10.Point<double>? southwest) =>
      (super.noSuchMethod(
          Invocation.method(#fetchShops, [northeast, southwest]),
          returnValue: Future<
                  _i2.Result<Map<String, _i9.Shop>, _i8.ShopsManagerError>>.value(
              _FakeResult<Map<String, _i9.Shop>, _i8.ShopsManagerError>())) as _i6
          .Future<_i2.Result<Map<String, _i9.Shop>, _i8.ShopsManagerError>>);
  @override
  _i6.Future<_i2.Result<_i11.ShopProductRange, _i8.ShopsManagerError>>
      fetchShopProductRange(_i9.Shop? shop, {bool? noCache = false}) => (super
          .noSuchMethod(
              Invocation.method(
                  #fetchShopProductRange, [shop], {#noCache: noCache}),
              returnValue:
                  Future<_i2.Result<_i11.ShopProductRange, _i8.ShopsManagerError>>.value(
                      _FakeResult<_i11.ShopProductRange, _i8.ShopsManagerError>())) as _i6
          .Future<_i2.Result<_i11.ShopProductRange, _i8.ShopsManagerError>>);
  @override
  _i6.Future<_i2.Result<_i2.None, _i8.ShopsManagerError>> putProductToShops(
          _i12.Product? product, List<_i9.Shop>? shops) =>
      (super.noSuchMethod(
              Invocation.method(#putProductToShops, [product, shops]),
              returnValue:
                  Future<_i2.Result<_i2.None, _i8.ShopsManagerError>>.value(
                      _FakeResult<_i2.None, _i8.ShopsManagerError>()))
          as _i6.Future<_i2.Result<_i2.None, _i8.ShopsManagerError>>);
  @override
  _i6.Future<_i2.Result<_i9.Shop, _i8.ShopsManagerError>> createShop(
          {String? name, _i10.Point<double>? coords, _i13.ShopType? type}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #createShop, [], {#name: name, #coords: coords, #type: type}),
              returnValue:
                  Future<_i2.Result<_i9.Shop, _i8.ShopsManagerError>>.value(
                      _FakeResult<_i9.Shop, _i8.ShopsManagerError>()))
          as _i6.Future<_i2.Result<_i9.Shop, _i8.ShopsManagerError>>);
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
  _i6.Future<_i10.Point<double>?> lastKnownPosition() =>
      (super.noSuchMethod(Invocation.method(#lastKnownPosition, []),
              returnValue: Future<_i10.Point<double>?>.value())
          as _i6.Future<_i10.Point<double>?>);
  @override
  _i6.Future<_i10.Point<double>?> currentPosition() =>
      (super.noSuchMethod(Invocation.method(#currentPosition, []),
              returnValue: Future<_i10.Point<double>?>.value())
          as _i6.Future<_i10.Point<double>?>);
  @override
  void callWhenLastPositionKnown(
          _i15.ArgCallback<_i10.Point<double>>? callback) =>
      super.noSuchMethod(
          Invocation.method(#callWhenLastPositionKnown, [callback]),
          returnValueForMissingStub: null);
}

/// A class which mocks [GoogleMapController].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleMapController extends _i1.Mock
    implements _i16.GoogleMapController {
  MockGoogleMapController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get mapId =>
      (super.noSuchMethod(Invocation.getter(#mapId), returnValue: 0) as int);
  @override
  _i6.Future<void> clearTileCache(_i17.TileOverlayId? tileOverlayId) =>
      (super.noSuchMethod(Invocation.method(#clearTileCache, [tileOverlayId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> animateCamera(_i18.CameraUpdate? cameraUpdate) =>
      (super.noSuchMethod(Invocation.method(#animateCamera, [cameraUpdate]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> moveCamera(_i18.CameraUpdate? cameraUpdate) =>
      (super.noSuchMethod(Invocation.method(#moveCamera, [cameraUpdate]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> setMapStyle(String? mapStyle) =>
      (super.noSuchMethod(Invocation.method(#setMapStyle, [mapStyle]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<_i3.LatLngBounds> getVisibleRegion() =>
      (super.noSuchMethod(Invocation.method(#getVisibleRegion, []),
              returnValue: Future<_i3.LatLngBounds>.value(_FakeLatLngBounds()))
          as _i6.Future<_i3.LatLngBounds>);
  @override
  _i6.Future<_i4.ScreenCoordinate> getScreenCoordinate(_i3.LatLng? latLng) =>
      (super.noSuchMethod(Invocation.method(#getScreenCoordinate, [latLng]),
              returnValue:
                  Future<_i4.ScreenCoordinate>.value(_FakeScreenCoordinate()))
          as _i6.Future<_i4.ScreenCoordinate>);
  @override
  _i6.Future<_i3.LatLng> getLatLng(_i4.ScreenCoordinate? screenCoordinate) =>
      (super.noSuchMethod(Invocation.method(#getLatLng, [screenCoordinate]),
              returnValue: Future<_i3.LatLng>.value(_FakeLatLng()))
          as _i6.Future<_i3.LatLng>);
  @override
  _i6.Future<void> showMarkerInfoWindow(_i19.MarkerId? markerId) =>
      (super.noSuchMethod(Invocation.method(#showMarkerInfoWindow, [markerId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> hideMarkerInfoWindow(_i19.MarkerId? markerId) =>
      (super.noSuchMethod(Invocation.method(#hideMarkerInfoWindow, [markerId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<bool> isMarkerInfoWindowShown(_i19.MarkerId? markerId) => (super
      .noSuchMethod(Invocation.method(#isMarkerInfoWindowShown, [markerId]),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<double> getZoomLevel() =>
      (super.noSuchMethod(Invocation.method(#getZoomLevel, []),
          returnValue: Future<double>.value(0.0)) as _i6.Future<double>);
  @override
  _i6.Future<_i20.Uint8List?> takeSnapshot() =>
      (super.noSuchMethod(Invocation.method(#takeSnapshot, []),
              returnValue: Future<_i20.Uint8List?>.value())
          as _i6.Future<_i20.Uint8List?>);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [LatestCameraPosStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockLatestCameraPosStorage extends _i1.Mock
    implements _i21.LatestCameraPosStorage {
  MockLatestCameraPosStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<void> set(_i10.Point<double>? pos) =>
      (super.noSuchMethod(Invocation.method(#set, [pos]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<_i10.Point<double>?> get() =>
      (super.noSuchMethod(Invocation.method(#get, []),
              returnValue: Future<_i10.Point<double>?>.value())
          as _i6.Future<_i10.Point<double>?>);
}

/// A class which mocks [AddressObtainer].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddressObtainer extends _i1.Mock implements _i22.AddressObtainer {
  MockAddressObtainer() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Result<_i23.OsmAddress, _i24.OpenStreetMapError>>
      addressOfShop(_i9.Shop? shop) => (super.noSuchMethod(
          Invocation.method(#addressOfShop, [shop]),
          returnValue: Future<
                  _i2.Result<_i23.OsmAddress, _i24.OpenStreetMapError>>.value(
              _FakeResult<_i23.OsmAddress, _i24.OpenStreetMapError>())) as _i6
          .Future<_i2.Result<_i23.OsmAddress, _i24.OpenStreetMapError>>);
  @override
  _i6.Future<_i2.Result<_i23.OsmAddress, _i24.OpenStreetMapError>>
      addressOfCoords(_i10.Point<double>? coords) => (super.noSuchMethod(
          Invocation.method(#addressOfCoords, [coords]),
          returnValue: Future<
                  _i2.Result<_i23.OsmAddress, _i24.OpenStreetMapError>>.value(
              _FakeResult<_i23.OsmAddress, _i24.OpenStreetMapError>())) as _i6
          .Future<_i2.Result<_i23.OsmAddress, _i24.OpenStreetMapError>>);
}
