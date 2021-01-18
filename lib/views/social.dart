import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/components/social_button.dart';

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  bool isDesktop = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var size = MediaQuery.of(context).size;
    if (size.width > size.height) {
      isDesktop = true;
    } else {
      isDesktop = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Expanded(child: SizedBox()),
          const SizedBox(height: 16),
          Wrap(
            direction: Axis.horizontal,
            spacing: 50,
            children: <Widget>[
              SocialButton(
                url: "https://github.com/charitarthchugh",
                icon: FontAwesomeIcons.github,
              ),
              SocialButton(
                  url: "https://linkedin.com/charitarth",
                  icon: FontAwesomeIcons.linkedin),
              SocialButton(
                url: "https://medium.com/@charitarth.chugh",
                icon: FontAwesomeIcons.medium,
              ),
              SocialButton(
                  url: "https://kaggle.com/charitarth",
                  icon: FontAwesomeIcons.kaggle)
            ],
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
