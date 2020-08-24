import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

//Internal Packages
import 'views/profile_page.dart';

void main() {
  //Licenses
      //OFL for Google Fonts
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/licenses/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
      //Unsplash license for picture
  LicenseRegistry.addLicense(() async* {
    final unsplashLicense = await rootBundle.loadString("assets/licenses/Unsplash.txt") ;
        yield LicenseEntryWithLineBreaks([
      "Photo by Mike Yukhtenko on Unsplash. https://unsplash.com/photos/a2kD4b0KK4s"
    ], unsplashLicense);
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
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(),
          primaryColorDark: Color.fromRGBO(7, 13, 47, 1),
          accentColor: Color.fromRGBO(247, 174, 110, 1),
        ),
        darkTheme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(),
          primaryColorDark: Color.fromRGBO(7, 13, 47, 1),
          accentColor: Color.fromRGBO(247, 174, 110, 1),
        ),
        home: ProfilePage());
  }
}
