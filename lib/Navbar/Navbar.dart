//External Packages
import 'package:flutter/material.dart';
//Internal Packages
import './DesktopNavbar.dart';
import './MobileNavbar.dart';


class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        if (constraints.maxWidth > 1200){
          return DesktopNavbar();
        }else if(constraints.maxWidth<1200&&constraints.maxWidth>800){
          return DesktopNavbar();
        }else{
          return MobileNavbar();
        }
      });
  }
}

