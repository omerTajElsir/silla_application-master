import 'package:flutter/material.dart';

Widget addPostHeader() {
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
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
