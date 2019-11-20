import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:silla_application/home/AppHome.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'dart:async';
import 'login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class FillProfile extends StatefulWidget {
  final String phone;
  final String id;
  FillProfile({Key key, this.phone, this.id}): super (key: key);
  @override
  _FillProfileStste createState() => _FillProfileStste();
}

class _FillProfileStste extends State<FillProfile> {
  //String _baseUrl= Constants.baseUrl;
  String _items = "";
  String _cats = "";
  String _phone,_id;
  int check = 0;
  int postStatus = 0,checkStatus = 0;


  @override
  void initState() {
    super.initState();
    _phone = "0991400444";
    _id = widget.id;
  }

  final _loginForm = GlobalKey<FormState>();

  Color c1 = Color(0x77FFFFFF);
  Color c2 = Color(0x22FFFFFF);


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/loginbg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                decoration: new BoxDecoration(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ),

          Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Center(
                      //padding: EdgeInsets.only(top: 20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey.shade800,
                          ),
                          CircleAvatar(
                            radius: 48,
                            backgroundColor: Colors.grey.shade400,
                            child: Icon(Icons.add,color: Colors.grey.shade800,size: 40,),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                      flex: 6,
                      child: Container(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Form(
                              key: _loginForm,
                              child: new SingleChildScrollView(
                                  child: new ConstrainedBox(
                                      constraints: new BoxConstraints(),
                                      child: new Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(left: 25,right: 25),
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                              autofocus: false,
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                              decoration: InputDecoration(
                                                hintText: "الاسم",
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.white),
                                                ),
                                                focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: AppColors.mainColor),
                                                ),
                                              ),


                                            ),
                                          ),
                                          SizedBox(height: 80,),




                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(padding: EdgeInsets.only(left: 20,right: 20),
                                            child: Text("الجنس",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),),
                                          ),
                                          SizedBox(height: 40.0),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(width: 30,),
                                              Container(
                                                width: 80,
                                                height: 80,
                                                child: GestureDetector(
                                                  onTap: (){
                                                    setState(() {
                                                       c1 = Color(0x77FFFFFF);
                                                       c2 = Color(0x22FFFFFF);
                                                    });
                                                  },
                                                  child: PhysicalModel(
                                                    borderRadius: new BorderRadius.circular(50.0),
                                                    color: c1,
                                                    child: new Stack(
                                                      alignment: Alignment.center,
                                                      children: <Widget>[
                                                        new Container(
                                                          width: 80.0,
                                                          height: 80.0,
                                                          decoration: new BoxDecoration(
                                                            borderRadius: new BorderRadius.circular(50.0),
                                                            border: new Border.all(
                                                              width: 1.0,
                                                              color: Colors.white,
                                                            ),
                                                          ),


                                                        ),
                                                        Container(
                                                          child: Text("ذكر",style: TextStyle(color: Colors.white),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ),
                                              SizedBox(width: 30,),
                                              Container(
                                                width: 80,
                                                height: 80,
                                                child: GestureDetector(
                                                  onTap: (){
                                                    setState(() {
                                                      c1 = Color(0x22FFFFFF);
                                                      c2 = Color(0x77FFFFFF);
                                                    });
                                                  },
                                                  child: PhysicalModel(
                                                    borderRadius: new BorderRadius.circular(50.0),
                                                    color: c2,
                                                    child: new Stack(
                                                      alignment: Alignment.center,
                                                      children: <Widget>[
                                                        new Container(
                                                          width: 80.0,
                                                          height: 80.0,
                                                          decoration: new BoxDecoration(
                                                            borderRadius: new BorderRadius.circular(50.0),
                                                            border: new Border.all(
                                                              width: 1.0,
                                                              color: Colors.white,
                                                            ),
                                                          ),


                                                        ),
                                                        Container(
                                                          child: Text("انثى",style: TextStyle(color: Colors.white),),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ),
                                              SizedBox(width: 30,),



                                            ],
                                          ),

                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10,top: 40,left: 20,right: 20),
                                              child: Container(
                                                width: 140,
                                                height: 50,
                                                child: PhysicalModel(
                                                  borderRadius: new BorderRadius.circular(50.0),
                                                  color: Colors.white70,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: <Widget>[
                                                      new Container(
                                                        width: 140.0,
                                                        height: 50.0,
                                                        decoration: new BoxDecoration(
                                                          borderRadius: new BorderRadius.circular(50.0),
                                                          border: new Border.all(
                                                            width: 1.0,
                                                            color: Colors.white,
                                                          ),
                                                        ),


                                                      ),
                                                      FlatButton(
                                                        child: Text ("تسجيل", style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
                                                        onPressed: (){
                                                          Navigator.of(context).push(
                                                            new MaterialPageRoute(
                                                              builder: (BuildContext context)=>new AppHome(),
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
                                  )
                              )
                          )

                      )
                  )
                ],
              )
          ),

        ],
      ),
    );
  }

  _onToLog() {

  }

  _onToDone(String token) {

  }

  Future<void> _wrongPost(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(" done"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
