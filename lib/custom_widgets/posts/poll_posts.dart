import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';

import '../../utils/AppColors.dart';

Widget pollPostItem(
    {@required context,
      @required textEditingController,
      @required String currentVal,
      @required Function onNoChange,
      @required Function onYesChange}) {
  return Column(
    children: <Widget>[
      userInfoRow(),
      pollPostContent(
          currentVal: currentVal,
          onNoChange: onNoChange,
          onYesChange: onYesChange),
      postAddComment(context, textEditingController)
    ],
  );
}

Widget pollPostContent(
    {@required String currentVal,
      @required Function onNoChange,
      @required Function onYesChange}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
                    " يبق غينيا الثالث، عشوائية, تطوير اقتصادية عل ذات. ويكيبيديا الأوربيين أن جهة. هنا؟ اليابان، نفس بل. اللازمة المجتمع الانجليزية به، و, جمعت هنا؟")),
          ],
        ),
      ),
      /*RadioListTile<String>(
        groupValue: currentVal,
        value: "لا",
        onChanged: onNoChange,
        title: Text("نعم"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Text("80%"),
            SizedBox(
                width: 100,
                child: LinearProgressIndicator(
                  value: 0.8,
                )),
          ],
        ),
      ),
      RadioListTile<String>(
        groupValue: currentVal,
        value: "نعم",
        onChanged: onYesChange,
        title: Text("لا"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Text("20%"),
            SizedBox(
                width: 100,
                child: LinearProgressIndicator(
                  value: 0.2,
                )),
          ],
        ),
      ),*/

      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                    width: 160,
                    height: 40,

                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Material(
                          color: AppColors.mainColor,
                          animationDuration: Duration(milliseconds: 500),
                          elevation: 0.0,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0),topLeft: Radius.circular(40.0)),
                          child:Container(),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("نعم",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                            SizedBox(width: 10,),
                            Icon(Icons.check_circle_outline,color: Colors.white,),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    )
                ),

                SizedBox(height: 20,),

                Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    width: 280,
                    height: 40,

                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Material(
                          color: Colors.grey,
                          animationDuration: Duration(milliseconds: 500),
                          elevation: 0.0,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0),topLeft: Radius.circular(40.0)),
                          child:Container(),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("لا",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                            SizedBox(width: 10,),
                            //Icon(Icons.check_circle_outline,color: Colors.white,),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    )
                ),


          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "130 قامو بالتصويت",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ),

      comment()
    ],
  );


}

Widget comment() {
  return Padding(
    padding: const EdgeInsets.only(bottom : 8.0 , top:  8 ,right: 8,left: 8),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Mohemmed Elamin"),
                  Text(
                    "4 دقائيق",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top : 8.0 , bottom: 8.0,left: 8, right: 50),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                      "ادي دار كل. يكن وتتحمّل المبرمة الأوروبية، ثم, كل الى اكتوبر عالمية استعملت.")),
            ],
          ),
        )
      ],
    ),
  );
}
