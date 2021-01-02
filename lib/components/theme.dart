import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;

  getMode() => _mode;

  _setMode(ThemeMode mode) {
    this._mode = mode;
    notifyListeners();
  }

  toggle() {
    if (_mode == ThemeMode.dark) {
      _setMode(ThemeMode.light);
    } else {
      _setMode(ThemeMode.dark);
    }
  }

  ThemeData dark(BuildContext context){
    return ThemeData();
  }

  ThemeData light(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
          headline1: GoogleFonts.notoSans(

          )
      ),
    );
  }
}
