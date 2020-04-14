import 'dart:ui';

//External Packages
import 'package:charitarthchugh/ResponsiveWidgets/responsive_widget_stateful.dart';
import 'package:flutter/material.dart';

//Internal packages
import 'ResponsiveWidgets/responsive_widget.dart';
import './Content/Navigation/NavHeader.dart';
import './Content/Navigation/cstm_drawer.dart';
import './Content/Profile/home.dart';
import './Content/Profile/about_me.dart';
import './Content/social.dart';

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
    return new ResponsiveWidgetStateful(
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
                  scrollableItems,
                ]),
          ),
        ),
      ),
    );

//Temporarily in this spot, planning to move into its ow
    ListView scrollableItems = new ListView(children: [SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * .1,
    ),
      Home(),
      SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .6,
      ),
      AboutMe(),
      SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .2,
      ),
      Social(),
      SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .1,
      )
    ],);
    ScrollController _scrollController = ScrollController(
      initialScrollOffset: 0,)
  }
}