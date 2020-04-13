//External Packages
import 'package:flutter/material.dart';
//Internal packages
import 'package:charitarthchugh/responsive_widget.dart';
import 'package:charitarthchugh/DesktopNavbar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                padding: const EdgeInsets.all(20),
                children: <Widget>[],
              ))
            : null, //No Drawer for large screens
        body: AnimatedPadding(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * .1),
          child: ResponsiveWidget(
            largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  DesktopNavbar(),
                SizedBox(height:MediaQuery.of(context).size.height * .1 ,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
