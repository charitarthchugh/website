/*
* ATTENTION- COMMENTED CODE IS FOR REFERENCE ONLY,
* not going to be used in actual web site
* due to the relative complexity in getting the buttons to work
* The intention was that the buttons would allow the user scroll to that
* section of the page
*/
import 'dart:ui';

//External Packages
import 'package:flutter/material.dart';

//Internal packages
import 'package:charitarthchugh/components/responsive_widget.dart';
import 'package:charitarthchugh/views/Profile/home.dart';
import 'Profile/about_me.dart';
import './Profile/social.dart';
import 'Profile/home2.dart';

final GlobalKey about = GlobalKey();
final GlobalKey social = GlobalKey();

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            width: MediaQuery.of(context).size.width,
            child: ResponsiveWidget(
              largeScreen: ListView(children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Home2(),
                    ResponsiveWidget.isSmallScreen(context)
                        ? SizedBox(
                            height: ResponsiveWidget.getScreenHeight(context) * .4,
                          )
                        : SizedBox(
                            height: ResponsiveWidget.getScreenHeight(context) * .6,
                          ),
                    AboutMe(),
                    SizedBox(
                      height: ResponsiveWidget.getScreenHeight(context) * .2,
                    ),
                    Social(),
                    SizedBox(
                      height: ResponsiveWidget.getScreenHeight(context)* .1,
                    ),
                  ],
                ),
              ]),
            ),
            /*decoration: BoxDecoration(
              color: Color.fromRGBO(7, 13, 47, 1),
              image: DecorationImage(
                  image: NetworkImage(
                'https://raw.githubusercontent.com/charitarthchugh/website/master/assets/images/stars-bg.png',
              )),
            )*/));
  }
}

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
    );
  }
}*/
