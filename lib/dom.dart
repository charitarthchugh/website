//External Packages
import 'package:flutter/material.dart';

//Internal packages
import 'package:website/components/responsive_widget.dart';
import 'package:website/views/Profile/home.dart';
import 'views/Profile/about_me.dart';
import 'views/Profile/social.dart';
import 'views/Profile/home.dart';

class DOM extends StatelessWidget {
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
              Home(),
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
              //Social(),
              SizedBox(
                height: ResponsiveWidget.getScreenHeight(context) * .1,
              ),
              Social()
            ],
          ),
        ]),
      ),
    ));
  }
}
