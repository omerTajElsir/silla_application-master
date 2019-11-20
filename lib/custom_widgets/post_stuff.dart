import 'package:flutter/material.dart';

import 'comment_text_filed.dart';

Widget userInfoRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
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
                )
              ],
            ),
          ),
        ],
      ),
      PopupMenuButton<String>(
        onSelected: (String action) async {
          print(action);
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[];
        },
      )
    ],
  );
}

Widget postAddComment(context, ctrl) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 1,
          height: 50,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: commentTextFiled(hint: "اكتب تعليقك", controller: ctrl),
        )
      ],
    ),
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
