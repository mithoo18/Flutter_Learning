import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  String _imagePath;
  double _headerHeight = 300.0;
  File file;
  final String _assetImagePath = '';
  final String _assetCameraImagePath = '';

  _HomeScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _imagePath != null
              ? _getImageFromFile(_imagePath)
              : _getImageFromAsset(),
          _getActionButton(),
          _getLogo(),
        ],
      ),
    );

    Widget _getImageFromAsset() {
      return Padding(
        padding: EdgeInsets.only(bottom: 30.0),
        child: Container(
          width: double.infinity,
          height: _headerHeight,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                _assetImagePath,
                width: 60.0,
                height: 60.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                child: Text(
                  'No Image Available',
                  style: TextStyle(
                    color: Colors.grey[350],
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
