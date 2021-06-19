import 'dart:math';

import 'package:plante/base/log.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Wrapper around [SharedPreferences.getInstance] mainly for testing purposes
class SharedPreferencesHolder {
  Future<SharedPreferences> get() => SharedPreferences.getInstance();
}

extension SharedPreferencesExt on SharedPreferences {
  Point<double>? getPoint(String key) {
    final posString = getString(key);
    if (posString == null) {
      return null;
    }

    final xyStrs = posString.split(';');
    if (xyStrs.length != 2) {
      if (xyStrs.isNotEmpty) {
        Log.e('Invalid posStr (1): $posString}');
      }
      remove(key);
      return null;
    }

    final x = double.tryParse(xyStrs[0]);
    final y = double.tryParse(xyStrs[1]);
    if (x == null || y == null) {
      Log.e('Invalid posStr (2): $posString}');
      remove(key);
      return null;
    }

    return Point<double>(x, y);
  }

  Future<bool> savePoint(String key, Point<double> point) async {
    return await setString(key, '${point.x};${point.y}');
  }
}
