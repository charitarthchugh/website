//External Packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Internal Packages
import 'package:website/components/responsive_widget.dart';
import 'package:website/components/social_button.dart';

class Social extends StatelessWidget {
  final List<SocialButton> _buttons = [
    SocialButton(
        icon: FontAwesomeIcons.githubAlt,
        url: "https://github.com/charitarthchugh/charitarthchugh"),
    SocialButton(
      url: "https://linkedin.com/in/charitarth",
      icon: FontAwesomeIcons.linkedin,
    ),
    SocialButton(
        url: "https://medium.com/@charitarth.chugh",
        icon: FontAwesomeIcons.medium),
    SocialButton(
        url: "https://kaggle.com/charitarth",
        icon: FontAwesomeIcons.kaggle)
  ];

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buttons[0],
          Divider(color: Colors.blueGrey),
          _buttons[1],
          _buttons[2],
          _buttons[3],
          RawMaterialButton(
            shape: CircleBorder(),
            child: FlutterLogo(size: 40),
            onPressed: () => showAboutDialog(
                context: context,
                applicationName: "charitarth.codes",
                applicationVersion: "2",
                applicationIcon: Icon(FontAwesomeIcons.terminal)),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buttons[0],
              Divider(color: Colors.blueGrey),
              _buttons[1],
              _buttons[2],
              _buttons[3],
            ],
          ),
          RawMaterialButton(
            shape: CircleBorder(),
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 40),
            onPressed: () => showAboutDialog(
                context: context,
                applicationName: "charitarth.codes",
                applicationVersion: "2",
                applicationIcon: const Icon(FontAwesomeIcons.terminal)),
          )
        ],
      );
    }
  }
}
