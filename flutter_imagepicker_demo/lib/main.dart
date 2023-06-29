import 'dart:async';

import 'package:flutter/material.dart';
import 'constant/Constant.dart';
import 'screen/CameraHomeScreen.dart';
import 'screen/HomeScreen.dart';
import 'screen/SplashScreen.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    //logError(e.code, e.description);
  }

  runApp(
    MaterialApp(
      title: "Camera App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        HOME_SCREEN: (BuildContext context) => HomeScreen(),
        CAMERA_SCREEN: (BuildContext context) => CameraHomeScreen(cameras),
      },
    ),
  );
}
