//External Packages
import 'package:flutter/material.dart';

//Internal Packages
import 'package:charitarthchugh/components/responsive_widget.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: [
                _NavButton(
                  onPressed: () {
                    print('pressed About');
                  },
                  text: 'About',
                ),
                SizedBox(
                  width: 30,
                ),
                /*SizedBox(
                  width: 30,
                ),*/
                _NavButton(
                  onPressed: () {
                    print('pressed Resume');
                  },
                  text: 'Resume',
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            )
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const _NavButton({Key key, this.text, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(child: Text(text,
        style: TextStyle(
        color: Colors.white70,
    )),onPressed: onPressed,color: Color.fromRGBO(0, 0, 0, 0),);
  }
}
