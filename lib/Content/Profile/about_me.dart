//External Dependencies
import 'package:flutter/material.dart';

//Internal Dependencies
import 'package:charitarthchugh/ResponsiveWidgets/responsive_widget.dart';

class AboutMe extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.width * .20,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.width * .20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('images/myself.jpg'),
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
        style: TextStyle(color: Colors.white70,fontSize: 16),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[profileImage(context), ProfileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          ProfileData
        ],
      ),
    );
  }
}
