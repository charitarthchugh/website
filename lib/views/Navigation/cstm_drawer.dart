//External Packages
import 'package:flutter/material.dart';
//Internal Packages


class CstmDrawer extends StatelessWidget {
  CstmDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(7, 13, 47, 1),
          image: DecorationImage(
              image: AssetImage(
                'images/stars-bg.png',
              )),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
        DrawerHeader(
        child: Text(
          'Charitarth Chugh',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30),
        ),
      ),
      Divider(color: Colors.blueGrey,),
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
            ),
      AnimatedContainer(
        duration: Duration(seconds: 2),
        height: MediaQuery
            .of(context)
            .size
            .height * .15,
        width: MediaQuery
            .of(context)
            .size
            .width * .15,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('images/clipart.png'),
                alignment: Alignment.center,
                fit: BoxFit.scaleDown)),
        /* ATTENTION- THIS CODE IS FOR REFERENCE ONLY,
          This code is not being used due to their relatively complex implementation
            The intention was that this would allow the user scroll to that section of the page
          _NavButton(
            onPressed: () {
              print('pressed About');
            },
            text: 'About',
          ),
          SizedBox(
            width: 30,
          ),
          _NavButton(
            onPressed: () {
              print('pressed Contact');
            },
            text: 'Contact',
          ),
          SizedBox(
            width: 30,
          ),
          _NavButton(
            onPressed: () {
              print('pressed Resume');
            },
            text: 'Coming Soon...',
          ),
          SizedBox(
            width: 30,
          ),*/
      )],
      ),
    ));
  }
}

/*
class _NavButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const _NavButton({Key key, this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8.0),
      child: Text(text,
          style: TextStyle(color: Color.fromRGBO(247, 174, 110, 1),
          )),
      onPressed: onPressed,
      color: Color.fromRGBO(0, 0, 0, 0),
    );
  }
}
*/
