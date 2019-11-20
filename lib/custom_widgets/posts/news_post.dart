import 'package:flutter/material.dart';

import '../post_stuff.dart';

Widget newsPostItem(
    {@required BuildContext context,
    TextEditingController textEditingController}) {
  return Column(
    children: <Widget>[
      userInfoRow(),
      Image.asset(
        "assets/person.jpg",
        fit: BoxFit.cover,
      ),
      postContent(),
      //actionsRow()
    ],
  );
}

Widget postContent() {
  return Container(
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
  );
}


