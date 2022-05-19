import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService extends ChangeNotifier {
  StreamController<bool> setTheme = StreamController();
  bool _isDark = false;
  bool darkMode = false;

  bool get isDark => _isDark;

  void setThemeMode(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', isDark);

    var isDarkMode = prefs.getBool('isDark') ?? false;
    _isDark = isDarkMode;
    notifyListeners();
  }

  Future<bool> getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isDark = prefs.getBool('isDark') ?? false;
    return isDark;
  }

  void initializeTheme() async {
    darkMode = await getThemeMode();
    _isDark = darkMode;
    notifyListeners();
  }
}
