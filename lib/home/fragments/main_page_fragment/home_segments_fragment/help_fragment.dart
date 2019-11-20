import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/comment_text_filed.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/help_posts.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'package:silla_application/utils/router.dart';

import 'details/helps_fragment_details.dart';

//HelpsSegmentFragment
class HelpsSegmentFragment extends StatefulWidget {
  @override
  _HelpsSegmentFragmentState createState() => _HelpsSegmentFragmentState();
}

class _HelpsSegmentFragmentState extends State<HelpsSegmentFragment> {
  TextEditingController textEditingController = new TextEditingController();

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
        shrinkWrap: true,
        primary: false,
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {
              Router.to(context, HelpsDetailsScreen());
            },
            child: Column(
              children: <Widget>[
                userInfoRow(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "مساعده عاجله",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/person.jpg",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Text(
                              'مرحبا بكم جميا . لديكم اخر الاخبار سيتن تسنيبس ستنيالاب ولكن بعض هذا القرنفل بايظ',
                              overflow: TextOverflow.ellipsis,
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF212121),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text("المزيد",style: TextStyle(color: Colors.cyan),)

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          LinearProgressIndicator(
                            value: 0.4,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "1000رس من اصل 20000رس",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0, right: 12),
                                    child: Text(
                                      "المستفيد:",
                                      style: TextStyle(color: AppColors.mainColor),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0, right: 12),
                                    child: Text("مسجد القريه"),
                                  )


                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.only(left: 2.0, right: 12),
                                child: Text(
                                  "تاريخ الانتهاء:",
                                  style: TextStyle(color: AppColors.mainColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0, right: 12),
                                child: Text("20/10/2019"),
                              )


                            ],
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                postAddComment(context, textEditingController)
              ],
            ),
          );
        });
  }
}
