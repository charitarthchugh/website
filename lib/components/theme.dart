import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;

  getMode() => _mode;

  setMode(ThemeMode mode) {
    this._mode = mode;
    notifyListeners();
  }

  toggle() {
    if (_mode == ThemeMode.dark) {
      setMode(ThemeMode.light);
      print(_mode);
    } else {
      setMode(ThemeMode.dark);
      print(_mode);
    }
  }

  final ThemeData dark = ThemeData.dark();
  final ThemeData light = ThemeData.light();
}
