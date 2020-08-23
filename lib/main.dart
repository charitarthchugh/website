//External Packages
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

//Internal Packages
import 'views/profile_page.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final unsplashLicense =
        "Unsplash grants you an irrevocable, nonexclusive, worldwide copyright license to download, copy, modify, distribute, perform, and use photos from Unsplash for free, including for commercial purposes, without permission from or attributing the photographer or Unsplash. This license does not include the right to compile photos from Unsplash to replicate a similar or competing service.";
    yield LicenseEntryWithLineBreaks(["Photo by Mike Yukhtenko on Unsplash. https://unsplash.com/photos/a2kD4b0KK4s"], unsplashLicense);
  });
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Charitarth Chugh',
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(),
          primaryColorDark: Color.fromRGBO(7, 13, 47, 1),
          accentColor: Color.fromRGBO(247, 174, 110, 1),
        ),
        home: ProfilePage());
  }
}
