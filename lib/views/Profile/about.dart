//External Dependencies
//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//Internal Dependencies
import 'package:website/components/responsive_widget.dart';
import 'package:provider/provider.dart';
import '../../components/theme_changer.dart';
import "package:velocity_x/velocity_x.dart";

class AboutMe extends StatelessWidget {
  AboutMe({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const String aboutme="I am a high school senior at Trumbull High "
        "in Trumbull Connecticut who is interested in machine learning, data "
        "science, and Linux. I am a technology enthusiast who is keen on "
        "sharing my knowledge to others. Programming is my passion.";
    final theme = Provider.of<ThemeChanger>(context);
    return VxDevice(mobile: Column(), web: Column());
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
