// Mocks generated by Mockito 5.0.3 from annotations
// in untitled_vegan_app/test/ui/first_screen/external_auth_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:either_option/src/either.dart' as _i3;
import 'package:either_option/src/option.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:untitled_vegan_app/model/user_params.dart' as _i8;
import 'package:untitled_vegan_app/model/veg_status.dart' as _i11;
import 'package:untitled_vegan_app/outside/backend/backend.dart' as _i7;
import 'package:untitled_vegan_app/outside/backend/backend_error.dart' as _i9;
import 'package:untitled_vegan_app/outside/backend/backend_product.dart' as _i4;
import 'package:untitled_vegan_app/outside/identity/google_authorizer.dart'
    as _i5;
import 'package:untitled_vegan_app/outside/identity/google_user.dart' as _i2;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeGoogleUser extends _i1.Fake implements _i2.GoogleUser {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

class _FakeBackendProduct extends _i1.Fake implements _i4.BackendProduct {}

/// A class which mocks [GoogleAuthorizer].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleAuthorizer extends _i1.Mock implements _i5.GoogleAuthorizer {
  MockGoogleAuthorizer() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.GoogleUser?> auth() =>
      (super.noSuchMethod(Invocation.method(#auth, []),
              returnValue: Future.value(_FakeGoogleUser()))
          as _i6.Future<_i2.GoogleUser?>);
}

/// A class which mocks [Backend].
///
/// See the documentation for Mockito's code generation for more information.
class MockBackend extends _i1.Mock implements _i7.Backend {
  MockBackend() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void addObserver(_i7.BackendObserver? observer) =>
      super.noSuchMethod(Invocation.method(#addObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  void removeObserver(_i7.BackendObserver? observer) =>
      super.noSuchMethod(Invocation.method(#removeObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  _i6.Future<bool> isLoggedIn() =>
      (super.noSuchMethod(Invocation.method(#isLoggedIn, []),
          returnValue: Future.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<_i3.Either<_i8.UserParams, _i9.BackendError>> loginOrRegister(
          String? googleIdToken) =>
      (super.noSuchMethod(Invocation.method(#loginOrRegister, [googleIdToken]),
              returnValue:
                  Future.value(_FakeEither<_i8.UserParams, _i9.BackendError>()))
          as _i6.Future<_i3.Either<_i8.UserParams, _i9.BackendError>>);
  @override
  _i6.Future<_i3.Either<bool, _i9.BackendError>> updateUserParams(
          _i8.UserParams? userParams) =>
      (super.noSuchMethod(Invocation.method(#updateUserParams, [userParams]),
              returnValue: Future.value(_FakeEither<bool, _i9.BackendError>()))
          as _i6.Future<_i3.Either<bool, _i9.BackendError>>);
  @override
  _i6.Future<_i4.BackendProduct?> requestProduct(String? barcode) =>
      (super.noSuchMethod(Invocation.method(#requestProduct, [barcode]),
              returnValue: Future.value(_FakeBackendProduct()))
          as _i6.Future<_i4.BackendProduct?>);
  @override
  _i6.Future<_i3.Either<_i10.None<dynamic>, _i9.BackendError>>
      createUpdateProduct(String? barcode,
              {_i11.VegStatus? vegetarianStatus,
              _i11.VegStatus? veganStatus}) =>
          (super.noSuchMethod(
                  Invocation.method(#createUpdateProduct, [
                    barcode
                  ], {
                    #vegetarianStatus: vegetarianStatus,
                    #veganStatus: veganStatus
                  }),
                  returnValue: Future.value(
                      _FakeEither<_i10.None<dynamic>, _i9.BackendError>()))
              as _i6.Future<_i3.Either<_i10.None<dynamic>, _i9.BackendError>>);
}
