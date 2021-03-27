// Mocks generated by Mockito 5.0.3 from annotations
// in untitled_vegan_app/test/backend/backend_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:untitled_vegan_app/backend/backend.dart' as _i5;
import 'package:untitled_vegan_app/backend/server_error.dart' as _i6;
import 'package:untitled_vegan_app/model/user_params.dart' as _i2;
import 'package:untitled_vegan_app/model/user_params_controller.dart' as _i3;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeUserParams extends _i1.Fake implements _i2.UserParams {}

/// A class which mocks [UserParamsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserParamsController extends _i1.Mock
    implements _i3.UserParamsController {
  MockUserParamsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void addObserver(_i3.UserParamsControllerObserver? observer) =>
      super.noSuchMethod(Invocation.method(#addObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  void removeObserver(_i3.UserParamsControllerObserver? observer) =>
      super.noSuchMethod(Invocation.method(#removeObserver, [observer]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<_i2.UserParams?> getUserParams() =>
      (super.noSuchMethod(Invocation.method(#getUserParams, []),
              returnValue: Future.value(_FakeUserParams()))
          as _i4.Future<_i2.UserParams?>);
  @override
  _i4.Future<void> setUserParams(_i2.UserParams? userParams) =>
      (super.noSuchMethod(Invocation.method(#setUserParams, [userParams]),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i4.Future<void>);
}

/// A class which mocks [BackendObserver].
///
/// See the documentation for Mockito's code generation for more information.
class MockBackendObserver extends _i1.Mock implements _i5.BackendObserver {
  MockBackendObserver() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void onServerError(_i6.ServerError? error) =>
      super.noSuchMethod(Invocation.method(#onServerError, [error]),
          returnValueForMissingStub: null);
}
