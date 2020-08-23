import 'package:charitarthchugh/components/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home2 extends StatelessWidget {
  final String _imageIdDark = "a2kD4b0KK4s";
  final String _collectionid = "3383552";

  @override
  Widget build(BuildContext context) {
    String _imageURL = "https://source.unsplash.com/" +
        _imageIdDark +
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
                  children: [TextSpan(text: "Chugh", style:GoogleFonts.notoSans(fontWeight: FontWeight.w600, color: Colors.white70))],
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              softWrap: false,
            ),
          )
        ],
      ),
    );
  }
}
