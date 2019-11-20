import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/comment_text_filed.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/news_post.dart';
import 'package:silla_application/utils/router.dart';

import 'details/news_fragment_details.dart';

class NewsSegmentFragment extends StatefulWidget {
  @override
  _NewsSegmentFragmentState createState() => _NewsSegmentFragmentState();
}

class _NewsSegmentFragmentState extends State<NewsSegmentFragment> {
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
            onTap: (){
              Router.to(context, NewsDetailsScreen());

            },
            child: Column(
              children: <Widget>[
                newsPostItem(
                    context: context, textEditingController: textEditingController),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
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
          );
        });
  }
}
