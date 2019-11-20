import 'package:flutter/material.dart';

Widget commentTextFiled(
    {@required String hint, @required TextEditingController controller}) {
  return Container(
height: 30,
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        border: Border.all(color: Colors.grey.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(20)),
    child: TextField(
      controller: controller,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top :5 , left: 5, right: 5),
        border: InputBorder.none,
        hintText: hint,
      ),
    ),
  );
}
