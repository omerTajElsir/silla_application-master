import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import 'chat.dart';

class Notifications extends StatefulWidget {
  __NotificationsState createState() => __NotificationsState();
}

class __NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('الاشعارات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: AppColors.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
        //elevation: 0,

      ),
      body: Column(
        //scrollDirection: Axis.vertical,
        children: <Widget>[

          Expanded(
            child: Container(

              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: AppColors.mainColor,
                            ),
                            CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage("assets/person.jpg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50,top: 50),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.comment,color: Colors.white,size: 10,),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                            child: Row(
                              children: <Widget>[
                                Text("قام ",style: TextStyle(fontSize: 14,),),
                                Text(" امجد عبد العزيز",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text(" بالاعجاب بمنشورك",style: TextStyle(fontSize: 14),),
                              ],
                            )
                        ),

                        SizedBox(width: 20,),

                        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {},)

                      ],
                    ),
                  ),

                  Container(
                    color: Colors.cyan.shade50,
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: AppColors.mainColor,
                            ),
                            CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage("assets/person.jpg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50,top: 50),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.comment,color: Colors.white,size: 10,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                            child: Row(
                              children: <Widget>[
                                Text("قام ",style: TextStyle(fontSize: 14,),),
                                Text(" امجد عبد العزيز",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text(" بالاعجاب بمنشورك",style: TextStyle(fontSize: 14),),
                              ],
                            )
                        ),

                        SizedBox(width: 20,),

                        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {},)

                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: AppColors.mainColor,
                            ),
                            CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage("assets/person.jpg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50,top: 50),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.comment,color: Colors.white,size: 10,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                            child: Row(
                              children: <Widget>[
                                Text("قام ",style: TextStyle(fontSize: 14,),),
                                Text(" امجد عبد العزيز",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text(" بالاعجاب بمنشورك",style: TextStyle(fontSize: 14),),
                              ],
                            )
                        ),

                        SizedBox(width: 20,),

                        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {},)

                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: AppColors.mainColor,
                            ),
                            CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage("assets/person.jpg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50,top: 50),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.comment,color: Colors.white,size: 10,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                            child: Row(
                              children: <Widget>[
                                Text("قام ",style: TextStyle(fontSize: 14,),),
                                Text(" امجد عبد العزيز",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text(" بالاعجاب بمنشورك",style: TextStyle(fontSize: 14),),
                              ],
                            )
                        ),

                        SizedBox(width: 20,),

                        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {},)

                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: AppColors.mainColor,
                            ),
                            CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage("assets/person.jpg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50,top: 50),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.comment,color: Colors.white,size: 10,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                            child: Row(
                              children: <Widget>[
                                Text("قام ",style: TextStyle(fontSize: 14,),),
                                Text(" امجد عبد العزيز",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text(" بالاعجاب بمنشورك",style: TextStyle(fontSize: 14),),
                              ],
                            )
                        ),

                        SizedBox(width: 20,),

                        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {},)

                      ],
                    ),
                  ),



                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}