import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import 'chat.dart';

class AllMessages extends StatefulWidget {
  _AllMesssagesState createState() => _AllMesssagesState();
}

class _AllMesssagesState extends State<AllMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('الرسائل',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: AppColors.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
        //elevation: 0,

      ),
      body: Column(
        //scrollDirection: Axis.vertical,
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
            height: 60,
            child: TextFormField(
              keyboardType: TextInputType.text,
              //textAlign: TextAlign.left,
              autofocus: false,
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'بحث',
                filled: true,
                fillColor: Colors.grey.shade200,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              validator: (value) {

                if (value.isEmpty) {
                  return 'please fill this field';
                }
                if(value.length < 6){
                  return 'phone must be more than 6 digits';
                }

              },
            ),
          ),



          Expanded(
            flex: 9,
            child: Container(

              child: ListView(
                children: <Widget>[
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context)=>new Chat(),
                          ),
                        );
                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                          color: Colors.cyan.shade50,
                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("How much is this item",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),

                              Container(
                                  width: 60,
                                  padding: EdgeInsets.only(bottom: 40),
                                  child: Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                        maxRadius: 12,
                                        backgroundColor: AppColors.mainColor,
                                        child: Padding(padding: EdgeInsets.all(3),
                                          child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 14),),),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("1:50 pm",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  )
                              )
                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context)=>new Chat(),
                          ),
                        );
                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                          color: Colors.cyan.shade50,
                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("How much is this item",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),

                              Container(
                                  width: 60,
                                  padding: EdgeInsets.only(bottom: 40),
                                  child: Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                        maxRadius: 12,
                                        backgroundColor: AppColors.mainColor,
                                        child: Padding(padding: EdgeInsets.all(3),
                                          child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 14),),),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("1:50 pm",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  )
                              )
                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context)=>new Chat(),
                          ),
                        );
                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("How much is this item",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context)=>new Chat(),
                          ),
                        );
                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("How much is this item",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context)=>new Chat(),
                          ),
                        );
                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("How much is this item",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context)=>new Chat(),
                          ),
                        );
                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("How much is this item",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

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