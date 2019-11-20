import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import 'chat.dart';
import 'fill_profile.dart';

class Language extends StatefulWidget {
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
          Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 150),
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10,top: 240),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: PhysicalModel(
                      borderRadius: new BorderRadius.circular(15.0),
                      color: Color(0x88000000),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new Container(
                            width: 200.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                width: 1.0,
                                color: Colors.white,
                              ),
                            ),


                          ),
                          FlatButton(
                            child: Text ("العربية", style: TextStyle(color: Colors.white),),
                            onPressed: (){
                              Navigator.of(context).push(
                                new MaterialPageRoute(
                                  builder: (BuildContext context)=>new FillProfile(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10,top: 40),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: PhysicalModel(
                      borderRadius: new BorderRadius.circular(15.0),
                      color: Color(0x88000000),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new Container(
                            width: 200.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                width: 1.0,
                                color: Colors.white,
                              ),
                            ),


                          ),
                          FlatButton(
                            child: Text ("English", style: TextStyle(color: Colors.white),),
                            onPressed: (){
                              Navigator.of(context).push(
                                new MaterialPageRoute(
                                  builder: (BuildContext context)=>new FillProfile(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}