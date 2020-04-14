//External Packages
import 'package:flutter/material.dart';

//Internal packages
import './responsive_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black38,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                elevation: 0,
                backgroundColor:Color.fromRGBO(7,13, 47, 1),
              )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? CstmDrawer()
            : null, //No Drawer for large screens
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(7,13, 47, 1),
              image: DecorationImage(
                  image: AssetImage(
                'images/stars-bg.png',
              )),
              ),
          child: ResponsiveWidget(
            largeScreen: ListView(children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  Home(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .6,
                  ),
                  AboutMe(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                  ),
                  Social(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
