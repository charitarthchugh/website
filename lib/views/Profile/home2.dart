import 'package:charitarthchugh/components/responsive_widget.dart';
import 'package:charitarthchugh/components/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home2 extends StatelessWidget {
  final String _imageIdDark = "a2kD4b0KK4s";
  final String _imageIdLight = "zuueig1w8WI";

  // final String _collectionId = "3383552";

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    String _image =
        theme.getMode() == ThemeMode.dark ? _imageIdDark : _imageIdLight;
    /* var ratio = ResponsiveWidget.getScreenWidth(context) /
        ResponsiveWidget.getScreenHeight(context);*/
    String _imageURL = "https://source.unsplash.com/" +
        _image +
        "/" +
        ResponsiveWidget.getScreenWidth(context).toString() +
        "x" +
        ResponsiveWidget.getScreenHeight(context).toString();
    return Container(
      height: ResponsiveWidget.getScreenHeight(context),
      width: ResponsiveWidget.getScreenWidth(context),
      child: Stack(
        children: [
          Image(
            image: NetworkImage(_imageURL),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                  text: "Charitarth",
                  children: [
                    TextSpan(
                        text: " Chugh",
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w600,
                            color: Colors.white70)),
                    //   TextSpan(text: ratio.toString())
                  ],
                  style: GoogleFonts.notoSans(
                      fontSize: ResponsiveWidget.getScreenWidth(context) / 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: RawMaterialButton(
              onPressed: () {
                theme.toggle();
              },
              child: Icon(
                theme.getMode() == ThemeMode.dark
                    ? FontAwesomeIcons.solidSun
                    : FontAwesomeIcons.solidMoon,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          )
        ],
      ),
    );
  }
}
