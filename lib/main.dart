import 'package:charitarthchugh/components/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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
    final unsplashLicense =
        await rootBundle.loadString("assets/licenses/Unsplash.txt");
    yield LicenseEntryWithLineBreaks([
      "Photo by Mike Yukhtenko on Unsplash. https://unsplash.com/photos/a2kD4b0KK4s"
    ], unsplashLicense);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (context) => ThemeChanger(),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        title: 'Charitarth Chugh',
        debugShowCheckedModeBanner: false,
        themeMode: theme.getMode(),
        theme:theme.light,
        darkTheme: theme.dark,
        home: ProfilePage());
  }
}
