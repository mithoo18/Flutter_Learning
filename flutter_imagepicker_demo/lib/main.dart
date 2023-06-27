import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_imagepicker_demo/constant/Constant.dart';
import 'package:flutter_imagepicker_demo/screen/SplashScreen.dart';

List<CameraDescription> cameras;
Future<Null> main() async {
  try {} on CameraException catch (e) {}

  runApp(MaterialApp(
      title: "Camera App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        HOME_SCREEN: (BuildContext context) => HomeScreen(),
        CAMERA_SCREEN: (BuildContext context) => CameraHomeScreen(cameras),
      }));
}
