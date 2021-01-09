import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Frame extends StatelessWidget {
  Frame({Key key, this.child}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(40),
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Theme.of(context).shadowColor)
              ]),
        ));
    /*child.box
    .shadow2xl
        .color(context.backgroundColor)
        .padding(Vx.m12)
        .alignCenter
        .make()
        .box
        .color(Theme.of(context).canvasColor)
        .make();*/
  }
}
