import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/news_post.dart';

//NewsDetailsScreen

class NewsDetailsScreen extends StatefulWidget {
  @override
  _NewsDetailsScreenState createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الخبر"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              userInfoRow(),
              Image.asset(
                "assets/person.jpg",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'مرحبا بكم جميا . لديكم اخر الاخبار سيتن تسنيبس ستنيالاب ولكن بعض هذا القرنفل بايظ',
                  style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Roboto',
                    color: new Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //actionsRow()
            ],
          ),
          postAddComment(context, textEditingController),
          comments()
        ],
      ),
    );
  }

  Widget comments() {
    return ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return comment();
        });
  }
}
