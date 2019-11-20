import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:silla_application/home/fragments/profile_sub_fragment/edit_profile_screen.dart';
import 'package:silla_application/home/fragments/profile_sub_fragment/time_line/time_line_screen.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'package:silla_application/utils/hex_color.dart';
import 'package:silla_application/utils/router.dart';

import 'profile_sub_fragment/share_profile_screen.dart';

class MyAccountFragment extends StatefulWidget {
  @override
  _MyAccountFragmentState createState() => _MyAccountFragmentState();
}

class _MyAccountFragmentState extends State<MyAccountFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[imageHeader(), userInfo()],
    );
  }

  Widget userInfo() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mohammed Elamin",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ", أراضي شواطيء مهمّات مع بعض. فعل بقصف ألمّ الإمداد قد, يتبقّ أوراقهم ما",
            textAlign: TextAlign.center,
          ),
        ),
        profileBtns(),
        userProfileInfo()
      ],
    );
  }

  Widget imageHeader() {
    return Stack(
      children: <Widget>[
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(color: AppColors.mainColor),
            padding: EdgeInsets.all(0),
          ),
          padding: EdgeInsets.only(bottom: 35),
        ),
        Positioned(
            top: 35,
            left: (MediaQuery.of(context).size.width / 2) - 60,
            child: Container(
              width: 120,
              height: 120,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ))
      ],
    );
  }

  Widget profileBtns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        profileBtnItem(
            iconData: LineIcons.share,
            title: "مشاركه",
            onClick: () {
              Router.to(context, ShareProfileScreen());
            }),
        profileBtnItem(
            iconData: LineIcons.edit,
            title: "تعديل",
            onClick: () {
              Router.to(context, EditProfileDataScreen());
            }),
        profileBtnItem(
            iconData: LineIcons.envelope, title: "رساله", onClick: () {}),
        profileBtnItem(
            iconData: LineIcons.comments,
            title: "الذكريات",
            onClick: () {
              Router.to(context, TimeLineScreen());
            })
      ],
    );
  }

  Widget profileBtnItem({IconData iconData, String title, Function onClick}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: onClick,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: AppColors.mainColor),
              child: Center(
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget userProfileInfo() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            profileInfoItem(title: "الحاله", subTitle: "متزوج"),
            profileInfoItem(title: "الهاتف", subTitle: "+249-389-239823")
          ],
        ),
        TableRow(
          children: <Widget>[
            profileInfoItem(title: "السكن", subTitle: "جده-السعوديه"),
            profileInfoItem(title: "العمل", subTitle: "موظف في وزارة الخارجيه")
          ],
        ),
        TableRow(
          children: <Widget>[
            profileInfoItem(title: "العمر", subTitle: "36 عام"),
            SizedBox(
              width: 0,
            )
          ],
        ),
      ],
    );
  }

  Widget profileInfoItem({@required String title, @required String subTitle}) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subTitle,
            style: TextStyle(color: AppColors.mainColor),
          ),
        )
      ],
    );
  }
}
