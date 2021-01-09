import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatefulWidget {
  SocialButton({
    Key key,
    @required this.url,
    @required this.icon,
  }) : super(key: key);
  final String url;
  final IconData icon;

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
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

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async {
        _launchInBrowser(widget.url);
      },
      child: Icon(
        widget.icon,
        color: Theme.of(context).iconTheme.color,
      ),
      padding: const EdgeInsets.all(8),
      shape: const CircleBorder(),
    );
  }
}
