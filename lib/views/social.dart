//External Packages
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//Internal Packages
import 'package:charitarthchugh/components/responsive_widget_stateful.dart';

class Social extends StatefulWidget {
  Social({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

//While there is only one link now, this is designed for easy expandability
  Widget _socialButton(
          {@required IconData FAicon,
          @required String txt,
          @required String url,
          bool disabled}) =>
      FlatButton.icon(
        onPressed: () async {
          _launchInBrowser(url);
        },
        icon: FaIcon(FAicon,color: Colors.white70,),
        padding: EdgeInsets.all(8),
        label: Text(
          txt,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        hoverColor: Color.fromRGBO(0, 0, 0, 1),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidgetStateful.isSmallScreen(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _socialButton(
                  FAicon: FontAwesomeIcons.githubAlt,
                  txt: 'Github',
                  url: "https://github.com/charitarthchugh/"),
              Divider(color:Colors.blueGrey),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(flex: 2, child: Icon(Icons.copyright,color: Colors.white70,)),
                  Flexible(
                    flex: 2,
                    child: Text(
                      'Copyright Charitarth Chugh under GPLv3, unless otherwise noted.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      softWrap: true,
                    ),
                  )
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _socialButton(
                  FAicon: FontAwesomeIcons.githubAlt,
                  txt: 'Github',
                  url: "https://github.com/charitarthchugh/"),
              VerticalDivider(thickness:5,
                color:Colors.white70,),
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.copyright,color: Colors.white70,),
                  Text(
                    'Copyright Charitarth Chugh under GPLv3, unless otherwise noted.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    softWrap: true,
                  )
                ],
              )
            ],
          );
  }
}
