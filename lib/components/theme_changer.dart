import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nord.dart';

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

  bool isDark() {
    return getMode() == ThemeMode.dark;
  }

  ThemeData dark(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColorLight: SnowStorm.nord6,
      backgroundColor: PolarNight.nord0,
      shadowColor: PolarNight.nord1,
      canvasColor: Color.fromRGBO(36, 41, 51, 1),
      //PolarNight.nord0,
      errorColor: Aurora.nord11,
      highlightColor: SnowStorm.nord5,
      iconTheme: IconThemeData(color: SnowStorm.nord4),
      textTheme: TextTheme(
          headline1: GoogleFonts.notoSans(color: SnowStorm.nord6),
          headline2: GoogleFonts.poppins(
              color: SnowStorm.nord6, fontWeight: FontWeight.bold),
          bodyText1: GoogleFonts.roboto(
              color: SnowStorm.nord5, fontWeight: FontWeight.normal)),
    );
  }

  ThemeData light(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColorDark: PolarNight.nord1,
      backgroundColor: SnowStorm.nord6,
      shadowColor: SnowStorm.nord5,
      canvasColor: SnowStorm.nord4,
      errorColor: Aurora.nord11,
      iconTheme: IconThemeData(color: PolarNight.nord0),
      textTheme: TextTheme(
          headline1: GoogleFonts.notoSans(
              color: PolarNight.nord3, fontWeight: FontWeight.bold),
          headline2: GoogleFonts.poppins(
              color: PolarNight.nord0, fontWeight: FontWeight.bold),
          bodyText1: GoogleFonts.roboto(
              color: PolarNight.nord1, fontWeight: FontWeight.normal)),
    );
  }
}
