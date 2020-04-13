//External Packages
import 'package:flutter/material.dart';

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Charitarth Chugh',
              style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 30),
            ),
            Row(
              children: [
                //Need to wrap with buttons later
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Portfolio',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
