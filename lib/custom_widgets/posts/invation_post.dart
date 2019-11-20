import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/post_stuff.dart';

Widget invitationPostItem(
    {@required BuildContext context,
    TextEditingController textEditingController}) {
  return Column(
    children: <Widget>[
      userInfoRow(),
      postContent(),
      postAddComment(context, textEditingController)
    ],
  );
}

Widget postContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
            "و بين لغات البرية, تونس التقليدية لكل بـ. الشهيرة التجارية الدولارات كان لم. ٢٠٠٤ وفرنسا الشّعبين أي بال, لعدم والفرنسي بالمطالبة ما إيو, أما تصفح يعبأ تم. هذا من وكسبت الخطّة, بحث في مارد انتباه وايرلندا, أعلنت الفترة الهادي دار كل. يكن وتتحمّل المبرمة الأوروبية، ثم, كل الى اكتوبر عالمية استعملت. "),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  child: Text("12"),
                )
              ],
            ),
          )
        ],
      )
    ],
  );
}
