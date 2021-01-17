import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:website/components/nord.dart';
import 'package:website/components/theme_changer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      child: Stack(
        children: [
          theme.isDark()
              ? Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/background/dark.webp",
                          ),
                          fit: BoxFit.cover)))
              : Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/background/light.webp",
                          ),
                          fit: BoxFit.cover))),
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
            ).shimmer(duration: Duration(seconds: 2)),
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
