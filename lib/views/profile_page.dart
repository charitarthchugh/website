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

final GlobalKey about = GlobalKey();
final GlobalKey social = GlobalKey();

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
/*Map<Widget, GlobalKey<State<StatefulWidget>>> mainWidgetKeys = {
    AboutMe(): about,
    Social(): social,
  };*/

/*void animateToWidget(Widget w) {
    if (mainWidgetKeys.containsKey(w)) {
      RenderBox box = mainWidgetKeys[w].currentContext.findRenderObject();
      Offset offset = box.localToGlobal(Offset.zero);
      double animationHeight = _controller.offset +
          offset.dy -
          MediaQueryData.fromWindow(window).padding.top -
          56.0;
      _controller.animateTo(animationHeight,
          duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    }
  }*/
}

final _controller = ScrollController();

/*void animateToWidget(Widget w) {
  if (mainWidgetKeys.containsKey(w)) {
  RenderBox box=mainWidgetKeys[w].currentContext.findRenderObject();
  Offset offset=box.localToGlobal(Offset.zero);
  double animationHeight = _controller.offset + offset.dy - MediaQueryData.fromWindow(window).padding.top - 56.0;
  _controller.animateTo(animationHeight, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}*/

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _ProfilePageState({key: Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                elevation: 0,
                backgroundColor: Color.fromRGBO(7, 13, 47, 1),
              )
            : null, //No Drawer for large screens ,
        body: new Container(
            width: MediaQuery.of(context).size.width,
            child: ResponsiveWidget(
              largeScreen: ListView(children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ResponsiveWidget.isSmallScreen(context)
                        ? SizedBox(
                      height: MediaQuery.of(context).size.height * .13,
                    ):SizedBox(
                      height: MediaQuery.of(context).size.height * .3,
                    ),
                    Home(),
                    ResponsiveWidget.isSmallScreen(context)
                        ? SizedBox(
                      height: MediaQuery.of(context).size.height * .4,
                    ):SizedBox(
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
            decoration: BoxDecoration(
              color: Color.fromRGBO(7, 13, 47, 1),
              image: DecorationImage(
                  image: NetworkImage(
                'https://raw.githubusercontent.com/charitarthchugh/website/master/assets/images/stars-bg.png',
              )),
            )));
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
