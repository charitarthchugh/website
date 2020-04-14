import 'dart:ui';

//External Packages
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

//Internal packages
import 'package:charitarthchugh/views/scrollable_content.dart';
import 'package:charitarthchugh/components/responsive_widget_stateful.dart';
import './components/responsive_widget.dart';
import './views/Navigation/NavHeader.dart';
import './views/Navigation/cstm_drawer.dart';
import './views/Profile/home.dart';
import './views/Profile/about_me.dart';
import './views/social.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey globalKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
  }

  _ProfilePageState({key: Key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
        ? AppBar(
      elevation: 0,
      backgroundColor: Color.fromRGBO(7, 13, 47, 1),
    ) : null,
    drawer:ResponsiveWidget.isSmallScreen(context)
    ? CstmDrawer()
        : null, //No Drawer for large screens ,
    body: new Container(
      width: MediaQuery.of(context).size.width,
      child: new ScrollableContent(),//TEMP
      decoration: BoxDecoration(
         color: Color.fromRGBO(7, 13, 47, 1),
         image: DecorationImage(
         image: AssetImage('images/stars-bg.png',)),)

    ));
    /*new ResponsiveWidgetStateful(
      largeScreen: new Scaffold(
        backgroundColor: Colors.black38,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(7, 13, 47, 1),
        )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? CstmDrawer()
            : null, //No Drawer for large screens
        body: new Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(7, 13, 47, 1),
            image: DecorationImage(
                image: AssetImage(
                  'images/stars-bg.png',
                )),
          ),
          child: new ResponsiveWidgetStateful(
            largeScreen: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),

                ]),
          ),
        ),
      ),
    );*/
  }
}