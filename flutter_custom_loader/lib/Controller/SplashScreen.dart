import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreen();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visibe = true;
  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(HOME_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 2),
    );

    animation = new CurvedAnimation(
        parent: animationController, curve: Curves.easeInOut);

    setState(() {
      _visibe = !_visibe;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: new Image.asset(
                    '',
                    height: 25.0,
                    fit: BoxFit.scaleDown,
                  ),
                )
              ],
            )
          ],
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              '',
              width: animation.value * 250,
              height: animation.value * 250,
            ),
          ],
        ),
      ],
    ));
  }
}
