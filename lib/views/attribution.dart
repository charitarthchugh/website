import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
class Attribution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: FlutterLogo(size: context.mq.size.width*.05,),
        onPressed: () => showAboutDialog(
            context: context,
            applicationName: "charitarth.codes",
            applicationVersion: "2",
            applicationIcon: Icon(FontAwesomeIcons.terminal),
            applicationLegalese: "Licenced under the GPL(version 3)"
        ));
  }
}
