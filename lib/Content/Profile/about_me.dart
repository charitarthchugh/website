//External Dependencies
import 'package:flutter/material.dart';

//Internal Dependencies
import 'package:charitarthchugh/responsive_widget.dart';

class AboutMe extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.width * .25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.width * .25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('images/favicon.png'),
                alignment: Alignment.center,
                fit: BoxFit.cover)),
      );
  final ProfileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi,This is some sample text.\n Flutter is awesome!",
        softWrap: true,
        textScaleFactor: 1.5,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white70),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[profileImage(context),ProfileData],
      ),
    );
  }
}