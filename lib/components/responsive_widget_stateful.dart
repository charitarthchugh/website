import 'package:flutter/material.dart';

class ResponsiveWidgetStateful extends StatefulWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  ResponsiveWidgetStateful({Key key,@required this.largeScreen, this.mediumScreen, this.smallScreen}) : super(key: key);
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  _ResponsiveWidgetStatefulState createState() =>
      _ResponsiveWidgetStatefulState(key: key,largeScreen: largeScreen,mediumScreen: mediumScreen,smallScreen: smallScreen);
}

class _ResponsiveWidgetStatefulState extends State<ResponsiveWidgetStateful> {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  _ResponsiveWidgetStatefulState({key: Key,this.largeScreen, this.mediumScreen, this.smallScreen});

  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return largeScreen;
      } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}