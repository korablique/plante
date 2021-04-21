// Mocks generated by Mockito 5.0.3 from annotations
// in plante/test/ui/product/init_product_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:flutter/src/widgets/framework.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:plante/base/result.dart' as _i2;
import 'package:plante/model/product.dart' as _i5;
import 'package:plante/outside/products/products_manager.dart'
    as _i3;
import 'package:plante/outside/products/products_manager_error.dart'
    as _i6;
import 'package:plante/ui/photos_taker.dart' as _i7;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeResult<OK, ERR> extends _i1.Fake implements _i2.Result<OK, ERR> {}

class _FakeUri extends _i1.Fake implements Uri {}

/// A class which mocks [ProductsManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductsManager extends _i1.Mock implements _i3.ProductsManager {
  MockProductsManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>> getProduct(
          String? barcodeRaw, String? langCode) =>
      (super.noSuchMethod(
              Invocation.method(#getProduct, [barcodeRaw, langCode]),
              returnValue: Future.value(
                  _FakeResult<_i5.Product?, _i6.ProductsManagerError>()))
          as _i4.Future<_i2.Result<_i5.Product?, _i6.ProductsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i5.Product, _i6.ProductsManagerError>>
      createUpdateProduct(_i5.Product? product, String? langCode) => (super
              .noSuchMethod(
                  Invocation.method(#createUpdateProduct, [product, langCode]),
                  returnValue: Future.value(
                      _FakeResult<_i5.Product, _i6.ProductsManagerError>()))
          as _i4.Future<_i2.Result<_i5.Product, _i6.ProductsManagerError>>);
  @override
  _i4.Future<_i2.Result<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>>
      updateProductAndExtractIngredients(
              _i5.Product? product, String? langCode) =>
          (super.noSuchMethod(
              Invocation.method(
                  #updateProductAndExtractIngredients, [product, langCode]),
              returnValue: Future.value(
                  _FakeResult<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>())) as _i4
              .Future<_i2.Result<_i3.ProductWithOCRIngredients, _i6.ProductsManagerError>>);
}

/// A class which mocks [PhotosTaker].
///
/// See the documentation for Mockito's code generation for more information.
class MockPhotosTaker extends _i1.Mock implements _i7.PhotosTaker {
  MockPhotosTaker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<Uri?> takeAndCropPhoto(_i8.BuildContext? context) =>
      (super.noSuchMethod(Invocation.method(#takeAndCropPhoto, [context]),
          returnValue: Future.value(_FakeUri())) as _i4.Future<Uri?>);
}
