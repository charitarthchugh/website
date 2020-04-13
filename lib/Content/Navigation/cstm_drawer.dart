import 'package:flutter/material.dart';

class CstmDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(7,13, 47, 1),
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
          Divider(),
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
            text: 'Resume',
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    ));
  }
}

class _NavButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const _NavButton({Key key, this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8.0) ,
      child: Text(text,
          style: TextStyle(color:  Color.fromRGBO(247,174, 110, 1),
          )),
      onPressed: onPressed,
      color: Color.fromRGBO(0, 0, 0, 0),
    );
  }
}
