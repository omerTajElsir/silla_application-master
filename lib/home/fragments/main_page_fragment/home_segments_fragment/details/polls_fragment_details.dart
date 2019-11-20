import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';
import 'package:silla_application/custom_widgets/posts/poll_posts.dart';

//PollsDetailsScreen

class PollsDetailsScreen extends StatefulWidget {
  @override
  _PollsDetailsScreenState createState() => _PollsDetailsScreenState();
}

class _PollsDetailsScreenState extends State<PollsDetailsScreen> {
  TextEditingController textEditingController = new TextEditingController();
  String _currentPollVal = "لا";
  List val = ["لا", "نعم"];

  static bool canUpdate(Widget oldWidget, Widget newWidget) {
    return oldWidget.runtimeType == newWidget.runtimeType
        && oldWidget.key == newWidget.key;
  }

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الاستطلاع"),
      ),
      body: ListView(
        children: <Widget>[
          AnimatedSwitcher(
            child: isVisible
                ? Container()
                : Container(
              key: UniqueKey(),
              height: 100.0,
              width: 100.0,
              color: Colors.blue,
            ),
            duration: Duration(seconds: 2),
          ),
          //comments()
        ],
      ),
    );
  }


}
