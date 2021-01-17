import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

class Frame extends StatelessWidget {
  Frame({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: Container(
        child: child,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            border:
                Border(top: BorderSide(color: Theme.of(context).errorColor)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: Theme.of(context).shadowColor)
            ]),
      ),
      web: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            child: child,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Theme.of(context).backgroundColor,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Theme.of(context).shadowColor)
                ]),
          )),
    );
  }
}
