import 'package:flutter/material.dart';
import 'package:website/components/frame.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:website/components/nord.dart';

class Skills extends StatefulWidget {
  Skills({Key key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    List<String> logos = [
      "assets/images/logos/dart.webp",
      "assets/images/logos/flutter.webp",
      "assets/images/logos/firebase.webp",
      "assets/images/logos/tux.webp",
      "assets/images/logos/java.webp",
      "assets/images/logos/pandas.webp",
      "assets/images/logos/pytorch.webp"
    ];
    return Frame(
        child: [
      "Skills"
          .text
          .textStyle(context.textTheme.headline2)
          .make(),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 4,
                spacing: 4,
                children: [
                  SkillCard(logos[0], "Dart", 500),
                  SkillCard(logos[1], "Flutter", 550),
                  SkillCard(logos[2], "Firebase", 600),
                  SkillCard(logos[3], "Linux", 650),
                  SkillCard(logos[4], "Java", 750),
                  SkillCard(logos[5], "Pandas", 800),
                  SkillCard(logos[6], "PyTorch", 850),
                ],
              ),
            ],
          ),
        ),
      )
    ].column().centered());
  }
}

class SkillCard extends StatefulWidget {
  final String _imageAssetName;
  final String _text;
  final int _delayDuration;

  SkillCard(
      this._imageAssetName, this._text, this._delayDuration)
      : super();

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: widget._delayDuration), () {
      setState(() {
        _opacity = 1;
      });
    });
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: context.theme.accentColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: context.isMobile ? 700 : 150,
                height: context.isMobile ? 50 : 75,
                child: Image.asset(widget._imageAssetName),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget._text,
                style: context.textTheme.bodyText1
                ),
            ],
          ),
        ),
      ),
    );
  }
}
