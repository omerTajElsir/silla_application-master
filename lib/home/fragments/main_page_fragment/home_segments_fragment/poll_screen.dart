import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/comment_text_filed.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/poll_posts.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'package:silla_application/utils/router.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/poll_posts.dart';
import 'details/polls_fragment_details.dart';

class PollsSegmentFragment extends StatefulWidget {
  @override
  _PollsSegmentFragmentState createState() => _PollsSegmentFragmentState();
}

class _PollsSegmentFragmentState extends State<PollsSegmentFragment> {
  TextEditingController textEditingController = new TextEditingController();
  bool isVisible = true;
  int _currentIndex = 1;
  List<GroupModel> _group = [
    GroupModel(
      text: "نعم",
      index: 1,
    ),
    GroupModel(
      text: "لا",
      index: 2,
    ),

  ];

  String animationNAme = "Favorite";

  void _likeAnimate() {
    setState(() {
      if(animationNAme == "Favorite"){
        animationNAme = "Unfavorite";
      }else {
        animationNAme = "Favorite";
      }
    });
  }



  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: 3,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              userInfoRow(),
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
              AnimatedSwitcher(
                child: isVisible
                    ? Column(
                    //padding: EdgeInsets.all(8.0),
                    children: _group
                        .map((item) => Container(
                      //margin: EdgeInsets.only(left: 20,right: 20),
                      height: 60,
                      child: RadioListTile(
                        groupValue: _currentIndex,
                        title: Text("${item.text}"),
                        value: item.index,
                        onChanged: (val) {
                          setState(() {
                            isVisible = false;
                            _currentIndex = val;
                          });
                        },
                      ),
                    ))
                        .toList(),

                )
                    : Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Container(
                          width: 160,
                          height: 40,
                          margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
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

                      Container(
                        height: 30,
                        child: IconButton(icon: Icon(Icons.close,color: Colors.red,),onPressed: (){
                          setState(() {
                            isVisible = true;
                          });
                        },),
                      )


                    ],

                ),
                duration: Duration(milliseconds: 500),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "120 قامو بالتصويت",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 30,
                            //color: Colors.red,
                            child: GestureDetector(onTap: (){
                              _likeAnimate();
                            },
                              child: FlareActor(
                                "assets/like_anim.flr",
                                animation: animationNAme,
                                fit: BoxFit.scaleDown,
                                //color: Colors.black,
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0,top: 5),
                          child: Text("12"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 40,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: Icon(Icons.comment),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0,top: 8),
                          child: Text("12"),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                height: 1,
                color: Colors.grey.shade300,
                margin: EdgeInsets.all(10),
              )
            ],
          );
        }
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

}
class GroupModel {
  String text;
  int index;
  GroupModel({this.text, this.index});
}