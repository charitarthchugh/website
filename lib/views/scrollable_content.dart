import 'package:flutter/material.dart';

class ScrollableContent extends StatefulWidget {
  final String title;

  const ScrollableContent({Key key, this.title}) : super(key: key);

  @override
  _ScrollableContentState createState() => _ScrollableContentState();
}

class _ScrollableContentState extends State<ScrollableContent> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {});
  }
}
