import 'package:flutter/material.dart';
import 'package:silla_application/utils/AppColors.dart';

import '../post_stuff.dart';

Widget helpPostItem(
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "مساعده عاجله",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
            "و بين لغات البرية, تونس التقليدية لكل بـ. الشهيرة التجارية الدولارات كان لم. ٢٠٠٤ وفرنسا الشّعبين أي بال, لعدم والفرنسي بالمطالبة ما إيو, أما تصفح يعبأ تم. هذا من وكسبت الخطّة, بحث في مارد انتباه وايرلندا, أعلنت الفترة الهادي دار كل. يكن وتتحمّل المبرمة الأوروبية، ثم, كل الى اكتوبر عالمية استعملت. "),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            LinearProgressIndicator(
              value: 0.4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "1000رس من اصل 20000رس",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 12),
                      child: Text(
                        "المستفيد:",
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 12),
                      child: Text("مسجد القريه"),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 12),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 12),
                      child: Text("12"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}
