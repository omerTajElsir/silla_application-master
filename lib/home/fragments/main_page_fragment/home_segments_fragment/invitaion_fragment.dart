import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/comment_text_filed.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/invation_post.dart';
import 'package:silla_application/utils/router.dart';

import 'details/invitaions_fragment_details.dart';

class InvitationSegmentFragment extends StatefulWidget {
  @override
  _InvitationSegmentFragmentState createState() =>
      _InvitationSegmentFragmentState();
}

class _InvitationSegmentFragmentState extends State<InvitationSegmentFragment> {
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
        itemCount: 5,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return InkWell(
              onTap: () {
                Router.to(context, InvitationsDetailsScreen());
              },
              child: Column(
                children: <Widget>[
                  userInfoRow(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                      child: Icon(
                                        Icons.location_on,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                      child: Text("صالة الازدهار"),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                      child: Icon(
                                        Icons.date_range,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                      child: Text("الخميس  14 مايو"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

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
                  postAddComment(context, textEditingController)
                ],
              )
          );
        });
  }

  ///invitationPostItem

}
