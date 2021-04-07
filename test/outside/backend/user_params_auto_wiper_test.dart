import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:untitled_vegan_app/outside/backend/backend.dart';
import 'package:untitled_vegan_app/outside/backend/backend_error.dart';
import 'package:untitled_vegan_app/outside/backend/user_params_auto_wiper.dart';
import 'package:untitled_vegan_app/model/user_params_controller.dart';

import 'user_params_auto_wiper_test.mocks.dart';

@GenerateMocks([UserParamsController, Backend])
void main() {
  test('Wipes user params on unauthorized server error', () async {
    final backend = MockBackend();
    BackendObserver? observer;
    when(backend.addObserver(any)).thenAnswer((realInvocation) {
      observer = realInvocation.positionalArguments[0];
    });
    final userParametersController = MockUserParamsController();
    final _ = UserParamsAutoWiper(backend, userParametersController);

    verifyNever(userParametersController.setUserParams(any));

    // Some other error
    observer!.onBackendError(BackendError(BackendErrorKind.OTHER));
    verifyNever(userParametersController.setUserParams(any));

    // Not authorized error
    observer!.onBackendError(BackendError(BackendErrorKind.NOT_AUTHORIZED));
    verify(userParametersController.setUserParams(null));
  });
}