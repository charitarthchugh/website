import 'package:charitarthchugh/components/responsive_widget.dart';
import 'package:charitarthchugh/components/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home2 extends StatelessWidget {
  final String _imageIdDark = "a2kD4b0KK4s";
  final String _imageIdLight = "zuueig1w8WI";

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    String _image =
        theme.getMode() == ThemeMode.dark ? _imageIdDark : _imageIdLight;

    String _imageURL = "https://source.unsplash.com/" +
        _image +
        "/" +
        ResponsiveWidget.getScreenWidth(context).toInt().toString() +
        "x" +
        ResponsiveWidget.getScreenHeight(context).toInt().toString();
    return Container(
      height: ResponsiveWidget.getScreenHeight(context),
      width: ResponsiveWidget.getScreenWidth(context),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: _imageURL,
            useOldImageOnUrlChange: true,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Align(
            child: RichText(
              text: TextSpan(
                  text: "Charitarth",
                  children: [
                    TextSpan(
                        text: " Chugh",
                        style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          wordSpacing: 2,
                        )),
                    //   TextSpan(text: ratio.toString())
                  ],
                  style: GoogleFonts.notoSans(
                      fontSize: ResponsiveWidget.getScreenHeight(context) / 25,
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
                color: theme.getMode() == ThemeMode.dark
                    ? Colors.white70
                    : Colors.black,
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
