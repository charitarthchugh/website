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
            )),
          ),
        ],
      ),
    );
  }
}
