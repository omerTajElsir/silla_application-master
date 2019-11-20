import 'package:flutter/material.dart';
import 'package:silla_application/utils/AppColors.dart';

class FamilyFragment extends StatefulWidget {
  @override
  _FamilyFragmentState createState() => _FamilyFragmentState();
}

class _FamilyFragmentState extends State<FamilyFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        children: <Widget>[
          Text("اختر شجرة العائلة",style: TextStyle(fontSize: 22),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.mainColor,
                  ),
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.add,color: AppColors.mainColor,size: 40,),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Text("اضف عائلة",style: TextStyle(fontSize: 22),textAlign: TextAlign.end,),

            ],
          ),

          SizedBox(height: 10,),
          Container(height: 1,color: Colors.grey.shade300,),
          SizedBox(height: 10,),

          Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.mainColor,
                  ),
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage("assets/person.jpg"),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Text("عائلة الخليفة",style: TextStyle(fontSize: 22),textAlign: TextAlign.end,),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.mainColor,
                    child: Icon(Icons.add,color: AppColors.mainColor,size: 40,),
                  ),
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage("assets/person.jpg"),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Text("عائلة آل محمد",style: TextStyle(fontSize: 22),textAlign: TextAlign.end,),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.mainColor,
                    child: Icon(Icons.add,color: AppColors.mainColor,size: 40,),
                  ),
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage("assets/person.jpg"),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Text("عائلة عبد الرحمن",style: TextStyle(fontSize: 22),textAlign: TextAlign.end,),

            ],
          ),

        ],
      ),
    );
  }
}
