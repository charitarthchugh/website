import 'package:auto_size_text/auto_size_text.dart';
import 'package:website/components/nord.dart';
import 'package:website/components/responsive_widget.dart';
import 'package:website/components/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:website/dom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* final String _imageURIDark = "https://source.unsplash.com/a2kD4b0KK4s/" +
        ResponsiveWidget.getScreenWidth(context).toInt().toString() +
        "x" +
        ResponsiveWidget.getScreenHeight(context).toInt().toString();*/
    const String _imageURILight =
        "https://source.unsplash.com/zuueig1w8WI/1920x1080";
    final theme = Provider.of<ThemeChanger>(context);

    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      child: Stack(
        children: [
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 100),
            crossFadeState: theme.isDark()
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/test.jpg",
                        ),
                        fit: BoxFit.cover))
                //NetworkImage(_imageURILight), fit: BoxFit.cover)),
                ),
            secondChild: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/dark/background.webp"),
                      fit: BoxFit.cover)),
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
                            color: SnowStorm.nord4,
                            fontWeight: FontWeight.bold)),
                    //   TextSpan(text: ratio.toString())
                  ],
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.bold, color: SnowStorm.nord6)),
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
                    color: PolarNight.nord0,
                  ),
                ),
                secondChild: Tooltip(
                  message: "Into the light",
                  child: Icon(
                    FontAwesomeIcons.solidSun,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                ),
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
