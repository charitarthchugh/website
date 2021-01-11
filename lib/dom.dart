//External Packages
import 'dart:core';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:website/components/frame.dart';

//Internal packages
import 'package:website/views/home.dart';
import 'package:website/views/projects.dart';
import 'package:website/views/about.dart';
import 'package:website/views/skills.dart';
import 'package:website/views/social.dart';

class DOM extends StatefulWidget {
  @override
  DOMState createState() => DOMState();
}

class DOMState extends State<DOM> {
  final _scrollController = PageController();
  var _selectedPageIndex = 0;
  bool isNavigating = false;

  double currentPageOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        currentPageOffset = _scrollController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Listener(
          onPointerSignal: (PointerSignalEvent details) {
            if (isNavigating) {
              debugPrint("Navigating");
              return;
            }
            debugPrint("Not Navigating");
            if (details is PointerScrollEvent) {
              if (details.scrollDelta.dy >= 1.5 &&
                  currentPageOffset<=5) {
                isNavigating = true;
                nextPage();
              } else if (details.scrollDelta.dy <= -1.5&&currentPageOffset<=5) {
                isNavigating = true;
                previousPage();
              }
            }
          },
          child: GestureDetector(
            onVerticalDragUpdate: (DragUpdateDetails details) {
              if (isNavigating) {
                debugPrint("Navigating");
                return;
              }
              debugPrint("Not Navigating");
              if (details.delta.dy < -2) {
                nextPage();
              } else if (details.delta.dy > 2) {
                previousPage();
              }
            },
            child: PageView.builder(
              controller: _scrollController,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                if (index == currentPageOffset.floor()) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..translate(
                          0,
                          (currentPageOffset - index) *
                              (context.screenHeight - 20)),
                    alignment: Alignment(0, 0),
                    child: getPage(index),
                  );
                } else if (index == currentPageOffset.floor() + 1) {
                  return Transform(
                    transform: Matrix4.identity()..translate(0, 0),
                    alignment: Alignment(0, 1),
                    child: getPage(index),
                  );
                } else {
                  return getPage(index);
                }
              },
            ),
          ),
        ),  (currentPageOffset == 0) ?
          Align(
            alignment: Alignment.bottomCenter,
            child: RawMaterialButton(
              onPressed: () {
                nextPage();
              },
              child: Icon(
                FontAwesomeIcons.chevronDown,
                color: Theme.of(context).iconTheme.color,
              ),
              shape: CircleBorder(),
            ),
          ):Container(),
      ],
    ));
  }

  void previousPage() {
    debugPrint("Previous Page");
    if (_selectedPageIndex > 0) {
      isNavigating = true;
      restoreNavigation();
      setState(() {
        _selectedPageIndex--;
        _scrollController.animateToPage(
          _selectedPageIndex,
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void nextPage() {
    debugPrint("Next Page");
    if (_selectedPageIndex < 6) {
      isNavigating = true;
      restoreNavigation();
      setState(() {
        _selectedPageIndex++;
        _scrollController.animateToPage(
          _selectedPageIndex,
          duration: Duration(milliseconds: 900),
          curve: Curves.easeOutSine,
        );
      });
    }
  }

  Future restoreNavigation() async {
    Future.delayed(Duration(milliseconds: 1500), () {
      isNavigating = false;
    });
  }

  Widget getPage(int index) {
    if (index == 0) {
      return Home();
    } else if (index == 1) {
      return About();
    } else if (index == 2) {
      return Skills();
    } else if (index == 3) {
      return Projects();
    } else if (index == 4) {
      return Social();
    } //else return Social();
  }
}
