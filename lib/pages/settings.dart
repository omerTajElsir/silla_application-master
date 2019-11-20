import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import 'chat.dart';
import 'login.dart';

class Settings extends StatefulWidget {
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('الاعدادات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: AppColors.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
        //elevation: 0,

      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 80,
            child: Row(
              children: <Widget>[
                SizedBox(width: 20,),
                Icon(Icons.lock,color: Colors.blueGrey,size: 35,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("الخصوصية",style: TextStyle(fontSize: 18),),
                    Text("تحديد نوع الاشعارات التي يمكن استقبالها",style: TextStyle(color: Colors.grey,fontSize: 18),),
                  ],
                )
              ],
            ),
          ),
          
          Container(height: 1,color: Colors.grey.shade200,),

          Container(
            height: 80,
            child: Row(
              children: <Widget>[
                SizedBox(width: 20,),
                Icon(Icons.language,color: Colors.blue,size: 35,),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("اللغة",style: TextStyle(fontSize: 18),),
                    Text("العربية",style: TextStyle(color: Colors.grey,fontSize: 18),),
                  ],
                )
              ],
            ),
          ),

          Container(height: 1,color: Colors.grey.shade200,),

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context)=>new Login(),
                ),
              );
            },
            child: Container(
              height: 80,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  Icon(Icons.power_settings_new,color: Colors.red,size: 35,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("تسجيل الخروج",style: TextStyle(fontSize: 18),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}