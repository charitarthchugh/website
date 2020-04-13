//External Packages
import 'package:flutter/material.dart';

//Internal Packages
import './profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  MyAppState createState() {
    return new MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charitarth Chugh',
      theme: ThemeData(
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        fontFamily: 'OpenSans',
        primaryColorDark: Color.fromRGBO(7,13, 47, 1),
        accentColor:Color.fromRGBO(247,174, 110, 1),
      ),
      home: ProfilePage(),
    );
  }
}
