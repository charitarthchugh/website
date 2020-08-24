import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData _themeData;
  ThemeMode _mode = ThemeMode.system;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;
  getMode() => _mode;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  setMode(ThemeMode mode) {
    _mode = mode;
  }
}
