//External Packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            'Charitarth Chugh',
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    fontSize: 30)),
          ),
          Row(
            children: [
              //Need to wrap with buttons later
              Text(
                'Home',
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                  color: Colors.white70,
                )),
              ),
              Text(
                'About Me',
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                  color: Colors.white70,
                )),
              ),
              Text(
                'Portfolio',
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                  color: Colors.white70,
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}


