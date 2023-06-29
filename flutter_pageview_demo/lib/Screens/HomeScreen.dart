import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);
  List<String> imageList = new List();
  HomeScreen();


  @override
  Widget build(BuildContext context){
  imageList.add("assets/images/iphone_xs_banner.png");
    imageList.add("assets/images/pixel_3_banner.png");
    imageList.add("assets/images/iphone_xs_banner.png"); 

    return new Scaffold(
      body:Container(
        color: Colors(0xFFCDCDC),
        child: Column(
          color : Color(0xFFDCDCDC),
          child : Column(
            children: <Widget>[
              Container(
                height: 270.0,
                child: Stack(
                  fit: StackFit.loose,
                  alignment: FractionalOffset.bottomCenter,
                  children: <Widget>[
                    PageView.builder(onPageChanged: (index) => 
                      pageIndexNotifier.value = index,
                      itemCount: length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            child: new Image.asset(
                              imageList[index],
                              width: 200.0,
                              height: 200.0,
                            ),
                          ));
                      },
                    ),
                    _buildExample1()
                  ],
                ),
              ),
              Flexible(flex: 1,)
            ],
          ),

        ),
        )
    )  
  }
}


