//External Dependencies
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:website/components/frame.dart';

class About extends StatelessWidget {
  About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String aboutMe = "I am a high school senior at Trumbull High "
        "in Trumbull, Connecticut who is interested in machine learning, data "
        "science, and Linux. I am a technology enthusiast who is keen on "
        "sharing my knowledge to others and exploring new technologies. Programming is my passion.";
    final profileData = AutoSizeText(
      aboutMe,
      softWrap: true,
      minFontSize: 28,
      textScaleFactor: 1,
      textAlign: TextAlign.center,
      style: context.textTheme.bodyText1,
    );
    final profileImage = Container(
      height: context.isMobile
          ? context.mq.size.height * .25
          : context.mq.size.width * .23,
      width: context.isMobile
          ? context.screenHeight * .25
          : context.screenWidth * .23,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/myself.png'),
              alignment: Alignment.center,
              fit: BoxFit.cover)),
    );
    return Frame(
      child: Center(
        child: VxDevice(
          web: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: profileImage,
            ),
            Container(
              child: Center(child: profileData),
              width: context.mq.size.width * .6,
              height: context.mq.size.height * .5,
            )
          ].row(),
          mobile: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[profileImage, profileData.p4(),],
          ),
        ),
      ),
    );
  }
}
