import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/help_posts.dart';







class HelpsDetailsScreen extends StatefulWidget {
  @override
  _HelpsDetailsScreenState createState() => _HelpsDetailsScreenState();
}

class _HelpsDetailsScreenState extends State<HelpsDetailsScreen> {
  TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل المعونه"),
      ),
      body: ListView(
        children: <Widget>[
          helpPostItem(
              context: context, textEditingController: textEditingController),
          comments()

        ],
      ),
    );
  }

  Widget comments(){
    return ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (ctx, index){
           return comment();
        });
  }
}
