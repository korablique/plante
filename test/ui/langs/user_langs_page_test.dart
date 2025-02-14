import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:plante/base/result.dart';
import 'package:plante/l10n/strings.dart';
import 'package:plante/lang/user_langs_manager.dart';
import 'package:plante/logging/analytics.dart';
import 'package:plante/model/lang_code.dart';
import 'package:plante/model/user_langs.dart';
import 'package:plante/model/user_params.dart';
import 'package:plante/ui/langs/user_langs_page.dart';

import '../../common_mocks.mocks.dart';
import '../../widget_tester_extension.dart';
import '../../z_fakes/fake_analytics.dart';

void main() {
  late MockUserLangsManager userLangsManager;

  setUp(() async {
    await GetIt.I.reset();
    GetIt.I.registerSingleton<Analytics>(FakeAnalytics());
    userLangsManager = MockUserLangsManager();
    when(userLangsManager.setManualUserLangs(any)).thenAnswer((invc) async {
      return Ok(UserParams());
    });
    GetIt.I.registerSingleton<UserLangsManager>(userLangsManager);
  });

  /// NOTE: a better "let's update languages" test is located in user_langs_widget_test
  testWidgets('update languages', (WidgetTester tester) async {
    when(userLangsManager.getUserLangs())
        .thenAnswer((_) async => UserLangs((e) => e
          ..auto = true
          ..sysLang = LangCode.en
          ..langs.addAll([LangCode.ru])));
    final context = await tester.superPump(const UserLangsPage());
    await tester.pumpAndSettle();

    verifyNever(userLangsManager.setManualUserLangs(any));

    await tester.tap(find.text(LangCode.be.localize(context)));
    await tester.pumpAndSettle();

    verifyNever(userLangsManager.setManualUserLangs(any));

    await tester.tap(find.text(context.strings.global_save));
    await tester.pumpAndSettle();

    verify(userLangsManager.setManualUserLangs([LangCode.ru, LangCode.be]));
  });
}
