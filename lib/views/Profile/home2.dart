import 'package:auto_size_text/auto_size_text.dart';
import 'package:charitarthchugh/components/responsive_widget.dart';
import 'package:charitarthchugh/components/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String _imageURIDark = "https://source.unsplash.com/a2kD4b0KK4s/" +
        ResponsiveWidget.getScreenWidth(context).toInt().toString() +
        "x" +
        ResponsiveWidget.getScreenHeight(context).toInt().toString();
    final String _imageURILight = "https://source.unsplash.com/zuueig1w8WI/" +
        ResponsiveWidget.getScreenWidth(context).toInt().toString() +
        "x" +
        ResponsiveWidget.getScreenHeight(context).toInt().toString();
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
      height: ResponsiveWidget.getScreenHeight(context),
      width: ResponsiveWidget.getScreenWidth(context),
      child: Stack(
        children: [
          AnimatedCrossFade(
            duration: Duration(seconds: 1),
            crossFadeState: theme.getMode() == ThemeMode.dark
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: CachedNetworkImage(
              imageUrl: _imageURILight,
              useOldImageOnUrlChange: true,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                value: downloadProgress.progress,
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            secondChild: CachedNetworkImage(
              imageUrl: _imageURIDark,
              useOldImageOnUrlChange: true,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: AutoSizeText.rich(
              TextSpan(
                  text: "Charitarth",
                  children: [
                    TextSpan(
                        text: " Chugh",
                        style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        )),
                    //   TextSpan(text: ratio.toString())
                  ],
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              maxLines: 2,
              softWrap: true,
              minFontSize: 40,
              stepGranularity: 8,
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: RawMaterialButton(
              onPressed: () {
                theme.toggle();
              },
              child: AnimatedCrossFade(
                duration: Duration(seconds: 1),
                crossFadeState: theme.getMode() == ThemeMode.dark
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Tooltip(
                  showDuration: Duration(seconds: 5),
                  preferBelow: false,
                  message: "Into the void",
                  child: Icon(
                    FontAwesomeIcons.solidMoon,
                    color: Colors.black,
                  ),
                ),
                secondChild: Tooltip(
                  message: "Into the light",
                  child: Icon(
                    FontAwesomeIcons.solidSun,
                    color: Colors.white70,
                  ),
                ),
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
