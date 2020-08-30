//External Dependencies
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//Internal Dependencies
import 'package:charitarthchugh/components/responsive_widget.dart';

class AboutMe extends StatelessWidget {
  AboutMe({
    Key key,
  }) : super(key: key);
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.width * .23,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.width * .23,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    'https://raw.githubusercontent.com/charitarthchugh/website/master/assets/images/myself.jpg'),
                alignment: Alignment.center,
                fit: BoxFit.cover)),
      );
  final profileData = Column(
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

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          profileData
        ],
      ),
    );
  }
}
