//@dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:website/components/http_service.dart';
import 'package:website/components/models/ip_location.dart';
import 'package:website/components/theme_changer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

//Internal Packages
import 'dom.dart';

void main() async {
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
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  UserCredential userCredential =
      await FirebaseAuth.instance.signInAnonymously();
  FirebaseAnalytics analytics = FirebaseAnalytics();
  analytics.setUserId(userCredential.user.uid);
   IPLocation location= await HttpService.getLocation();
  analytics.setUserProperty(name: "IP", value: location.query);
  analytics.setUserProperty(name: "State", value: location.regionName);
  analytics.setUserProperty(name: "City", value: location.city);
  analytics.setUserProperty(name: "ISP", value: location.isp);
  analytics.setUserProperty(name: "Zip", value: location.zip);
  var now = DateTime.now();
  analytics.setUserProperty(
      name: "lastTimeAccessed",
      value: DateTime(now.year, now.month, now.day, now.hour, now.minute)
          .toString());
  analytics.logAppOpen();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        theme: theme.light(context),
        darkTheme: theme.dark(context),
        home: DOM());
  }
}
