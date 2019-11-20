import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/invation_post.dart';

//InvitationsDetailsScreen

class InvitationsDetailsScreen extends StatefulWidget {
  @override
  _InvitationsDetailsScreenState createState() =>
      _InvitationsDetailsScreenState();
}

class _InvitationsDetailsScreenState extends State<InvitationsDetailsScreen> {
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الدعوه"),
      ),
      body: ListView(
        children: <Widget>[
          invitationPostItem(
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
