import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import 'chat.dart';

class Splash extends StatefulWidget {
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: AppColors.mainColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset(
              "assets/loginbg.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0x33000000),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Image.asset("assets/logo.png"),
          )
        ],
      ),
    );
  }
}