import 'dart:async';

import 'package:plante/base/base.dart';
import 'package:plante/base/result.dart';
import 'package:plante/lang/location_based_user_langs_manager.dart';
import 'package:plante/lang/countries_lang_codes_table.dart';
import 'package:plante/lang/manual_user_langs_manager.dart';
import 'package:plante/lang/sys_lang_code_holder.dart';
import 'package:plante/lang/user_langs_manager_error.dart';
import 'package:plante/location/location_controller.dart';
import 'package:plante/logging/log.dart';
import 'package:plante/model/lang_code.dart';
import 'package:plante/model/user_langs.dart';
import 'package:plante/model/shared_preferences_holder.dart';
import 'package:plante/model/user_params_controller.dart';
import 'package:plante/outside/backend/backend.dart';
import 'package:plante/outside/map/open_street_map.dart';

class UserLangsManager {
  final SysLangCodeHolder _sysLangCodeHolder;
  final LocationBasedUserLangsManager _locationUserLangsManager;
  final ManualUserLangsManager _manualUserLangsManager;

  final _initCompleter = Completer<void>();
  Future<void> get initFuture => _initCompleter.future;

  UserLangsManager(
      this._sysLangCodeHolder,
      CountriesLangCodesTable langCodesTable,
      LocationController locationController,
      OpenStreetMap osm,
      SharedPreferencesHolder prefsHolder,
      UserParamsController userParamsController,
      Backend backend)
      : _locationUserLangsManager = LocationBasedUserLangsManager(
            langCodesTable, locationController, osm, prefsHolder),
        _manualUserLangsManager =
            ManualUserLangsManager(userParamsController, backend) {
    _initAsync();
  }

  UserLangsManager.forTests(
      this._sysLangCodeHolder,
      LocationBasedUserLangsManager locationBasedManager,
      ManualUserLangsManager manualManager)
      : _locationUserLangsManager = locationBasedManager,
        _manualUserLangsManager = manualManager {
    if (!isInTests()) {
      throw Exception('UserLangsManager.forTests called not in tests');
    }
    _initAsync();
  }

  Future<void> _initAsync() async {
    await _locationUserLangsManager.initFuture;
    await _manualUserLangsManager.initFuture;
    await _sysLangCodeHolder.langCodeInited;
    _initCompleter.complete();
  }

  /// At least 1 language is guaranteed.
  Future<UserLangs> getUserLangs() async {
    await initFuture.timeout(const Duration(seconds: 5));

    var langs = await _manualUserLangsManager.getUserLangs();
    if (langs != null) {
      return _constructResult(langs);
    }
    langs = await _locationUserLangsManager.getUserLangs();
    if (langs != null) {
      return _constructResult(langs);
    }
    Log.w('UserLangsManager.getUserLangs: '
        'called when no user params available');
    return _constructResult([]);
  }

  UserLangs _constructResult(List<LangCode> langs) {
    final sysLangCode = LangCode.safeValueOf(_sysLangCodeHolder.langCode);
    if (sysLangCode == null) {
      Log.w('UserLangsManager._constructResult: '
          'sys lang is not parsed: $sysLangCode');
    }

    if (langs.isEmpty) {
      langs.insert(0, sysLangCode ?? LangCode.en);
    } else if (sysLangCode != null && !langs.contains(sysLangCode)) {
      langs.insert(0, sysLangCode);
    }
    return UserLangs((e) => e
      ..auto = false
      ..langs.addAll(langs)
      ..sysLang = sysLangCode);
  }

  Future<Result<None, UserLangsManagerError>> setManualUserLangs(
      List<LangCode> userLangs) async {
    return await _manualUserLangsManager.setUserLangs(userLangs);
  }
}
