/*
* ATTENTION- THIS CODE IS FOR REFERENCE ONLY,
* not going to be used in actual web site
* due to the relative complexity in getting the buttons to work
* The intention was that the buttons would allow the user scroll to that
* section of the page
*/




//External Packages
import 'package:charitarthchugh/views/profile_page.dart';
import 'package:flutter/material.dart';

//Internal Packages
import 'package:charitarthchugh/components/responsive_widget.dart';
import '../Profile/about_me.dart';
import '../Profile/social.dart';

class NavHeader extends StatelessWidget {
  NavHeader({Key key}) : super(key: key);
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
                  text: 'About Me',
                ),
                SizedBox(
                  width: 30,
                ),
                /*SizedBox(
                  width: 30,
                ),*/
                _NavButton(
                  onPressed: () {
                    print('pressed Social');
                  },
                  text: 'Social',
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
