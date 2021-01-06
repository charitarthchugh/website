import 'package:flutter/material.dart';

//Handles the layout type depending on the screen size
class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static bool isSmallScreen(BuildContext context) =>
      getScreenWidth(context) < 800;

  static bool isLargeScreen(BuildContext context) =>
      getScreenWidth(context) > 800;

  static bool isMediumScreen(BuildContext context) =>
      getScreenWidth(context) > 800 && getScreenWidth(context) < 1200;

  double ratio(BuildContext context) =>
      getScreenWidth(context) / getScreenHeight(context);

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
