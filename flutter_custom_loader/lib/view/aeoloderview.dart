import 'package:flutter/material.dart';

class _AeoLoaderState extends State<AeoLoaderView>
    with TickerProviderStateMixin {
  String loaderTitle;
  String loaderWidth;
  double loaderHeight;
  int animationTimeMS;
  double animationSpeed;
  int uicount;

_AeoLoaderState({
  Key key,
  @required this.loaderTitle,
  this.loaderWidth = 200.0,
  this.loaderHeight = 200.0,
  this.animationSpeed = 0.15,
  this.animationTimeMS = 5000
  this.uicount = 4
});

List<Widget> createWidgetForAnimation()
{
  List<Widget> widget = [];
  final double as = this.animationSpeed;
  double initailSpeed = 0.0;

  Tween<double> t = new Tween<double>(begin: 0.0,end : 1.00);
  AnimationController _controller = new AnimationController(
    duration: Duration(milliseconds: this.animationTimeMS),
    vsync: this,
    );
_controller.repeat().orCancel;

for(var i = 0;i < 4; i++){
  Widgets.add(new ScaleCircle(controller : _controller,
  aniamtion : t.animate(
    parent : _controller,
    curve : new Interval(initailSpeed, initailSpeed + as,curve : Curves.linear,
    ),
  ),
  size : 25.0));
  initailSpeed += as;
}
return widgets;
}

@override
void initSpeed(){
  
}
}
