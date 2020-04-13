//External Packages
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//Internal packages
import './responsive_widget.dart';
import './Content/Navigation/NavHeader.dart';
import './Content/Navigation/cstm_drawer.dart';
import './Content/Profile/home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          Color.fromRGBO(0, 0, 0, 1),
          Color.fromRGBO(41, 41, 41, 1),
        ])),
        child: Scaffold(
          appBar: ResponsiveWidget.isSmallScreen(context)
              ? AppBar(
                  elevation: 0,
                  backgroundColor: Colors.black38,
                )
              : null,
          drawer: ResponsiveWidget.isSmallScreen(context)
              ? CstmDrawer()
              : null, //No Drawer for large screens
          body: ResponsiveWidget(
            largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                NavHeader(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Home()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
