//@dart=2.9
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/components/FirebaseInit.dart';
import 'package:website/components/licences.dart';

//Internal Packages
import 'dom.dart';
import 'components/theme_changer.dart';

void main() async {
  //Licenses
  await Licences.load();
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize Firebase
  await FirebaseInit.init();
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
