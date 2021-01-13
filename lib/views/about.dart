//External Dependencies
//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:website/components/frame.dart';
import 'package:auto_size_text/auto_size_text.dart';

class About extends StatelessWidget {
  About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String aboutMe = "I am a high school senior at Trumbull High "
        "in Trumbull Connecticut who is interested in machine learning, data "
        "science, and Linux. I am a technology enthusiast who is keen on "
        "sharing my knowledge to others and exploring new technologies. Programming is my passion.";
    return VxDevice(
        mobile: Column(
          children: [Image.asset("assets/images/myself.png")],
        ),
        web: Frame(
          child: Row(
            children: [Image.asset("assets/images/myself.png")],
          ),
        ));
    /*final profileData = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Hi,This is some sample text.\n Flutter is awesome!",
          softWrap: true,
          textScaleFactor: 1.5,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 16),
        )
      ],
    );
    final profileImage = AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * .25
          : MediaQuery.of(context).size.width * .23,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * .25
          : MediaQuery.of(context).size.width * .23,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/myself.jpg'),
              alignment: Alignment.center,
              fit: BoxFit.cover)),
    );
    return Container(

      // width: super,
      child: ResponsiveWidget(
        largeScreen: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[profileImage, profileData],
        ),
        smallScreen: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            profileImage,
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            profileData
          ],
        ),
      ),
    );*/
  }
}
