import 'package:flutter/material.dart';
import 'package:flutter_section_list/Constants/Constant.dart';

void main() => runApp(new Section());

class SectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: AnimateSplashScreen(),
      routes: <String, WidgetBuilder>{
        HOME_SCREEN: (BuildContext context) => new HomeScreen(
              title: "Apps",
            ),
      },
    );
  }
}
