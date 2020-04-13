//External Packages
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
//Internal Packages

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  @override
  Widget build(BuildContext context) {
    Widget _typewriterText = Container(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: isSmallScreen(context)
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hi, my name is ',
              textScaleFactor: 1.3,
              style: TextStyle(
                  color: Color.fromRGBO(247, 174, 110, 1), fontSize: 16),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: isSmallScreen(context)
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
          children: <Widget>[
            TypewriterAnimatedTextKit(
              onTap: () {
                print('pressed CC');
              },
              //Instead of using a timer, I just added spaces
              text: [' ', ' ', 'Charitarth \nChugh_'],
              totalRepeatCount: 1,
              textAlign:
                  isSmallScreen(context) ? TextAlign.center : TextAlign.start,
              alignment: Alignment.topLeft,
              speed: Duration(milliseconds: 100),
              displayFullTextOnTap: false,
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        )
      ]),
    ));
    Widget smallScreen = Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _typewriterText,
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: isSmallScreen(context)
              ? MediaQuery.of(context).size.height * .25
              : MediaQuery.of(context).size.width * .25,
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.height * .25
              : MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('images/planet-orange.png'),
                  alignment: Alignment.center,
                  fit: BoxFit.fill)),
        )
      ],
    );
    Widget largeScreen = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(flex: 2, child: _typewriterText),
          Flexible(
            flex: 2,
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * .25
                  : MediaQuery.of(context).size.width * .25,
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * .25
                  : MediaQuery.of(context).size.width * .25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/planet-orange.png'),
                      alignment: Alignment.center,
                      fit: BoxFit.fill)),
            ),
          ),
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
