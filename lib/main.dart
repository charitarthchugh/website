//External Packages
import 'package:flutter/material.dart';

//Internal Packages
import 'views/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  MyAppState createState() {
    return new MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charitarth Chugh',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColorDark: Color.fromRGBO(7,13, 47, 1),
        accentColor:Color.fromRGBO(247,174, 110, 1),
      ),
      home: ProfilePage()
    );
  }
}
