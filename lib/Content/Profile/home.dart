//External Packages
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//Internal Packages
import 'package:charitarthchugh/responsive_widget.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget smallScreen = new Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
      ],
    );
    Widget largeScreen = new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 250,
            child: TypewriterAnimatedTextKit(
              onTap: () {
                print('pressed CC');
              },
              text: ['Charitarth Chugh'],
            ),
          )
        ]);
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return largeScreen;
      } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
        return largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
