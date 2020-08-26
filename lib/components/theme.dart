import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    } else {
      setMode(ThemeMode.dark);
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
