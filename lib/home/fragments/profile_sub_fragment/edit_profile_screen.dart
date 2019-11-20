import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:silla_application/custom_widgets/buttons.dart';
import 'package:silla_application/custom_widgets/custom_drop_down_menu.dart';
import 'package:silla_application/custom_widgets/custom_text_filed.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'package:silla_application/utils/hex_color.dart';

class EditProfileDataScreen extends StatefulWidget {
  @override
  _EditProfileDataScreenState createState() => _EditProfileDataScreenState();
}

class _EditProfileDataScreenState extends State<EditProfileDataScreen> {
  var _key = new GlobalKey<FormState>();

  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController phoneCtrl = new TextEditingController();
  TextEditingController jobCtrl = new TextEditingController();
  TextEditingController locationCtrl = new TextEditingController();

  var _gender = ["male", "female"];
  String _selectedGender;

//
  var _status = ["married", "not married"];
  String _selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تعديل"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              profileHeader(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Form(
              key: _key,
              child: Column(
                children: <Widget>[
                  appTextFiledWithCtrl(
                      label: "الاسم",
                      hint: "ادخل الاسم",
                      onValidation: (String text) {
                        if (text.isEmpty) {
                          return "الاسم مطلوب";
                        }
                      },
                      textEditingController: nameCtrl),
                  appTextFiledWithCtrl(
                      label: "الهاتف",
                      hint: "ادخل الهاتف",
                      onValidation: (String text) {
                        if (text.isEmpty) {
                          return "الهاتف مطلوب";
                        }
                      },
                      textEditingController: nameCtrl),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: customDropDownMenu(
                            onItemChange: (newItem) {},
                            dataList: _gender,
                            selectedMenuItem: _selectedGender,
                            width: MediaQuery.of(context).size.width / 3.4,
                            hint: "اختار نوعك"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: customDropDownMenu(
                            onItemChange: (newItem) {},
                            dataList: _status,
                            selectedMenuItem: _selectedStatus,
                            width: MediaQuery.of(context).size.width / 3.4,
                            hint: "الحاله"),
                      )
                    ],
                  ),
                  appTextFiledWithCtrl(
                      label: "العمل",
                      hint: "ادخل العمل",
                      onValidation: (String text) {
                        if (text.isEmpty) {
                          return "العمل مطلوب";
                        }
                      },
                      textEditingController: jobCtrl),
                  appTextFiledWithCtrl(
                      label: "السكن",
                      hint: "ادخل السكن",
                      onValidation: (String text) {
                        if (text.isEmpty) {
                          return "السكن مطلوب";
                        }
                      },
                      textEditingController: locationCtrl),
                  appBtn(
                    text: "حفظ",
                    onTap: () {},
                    width: MediaQuery.of(context).size.width / 2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget profileHeader() {
    return Stack(
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          padding: EdgeInsets.all(30),
        ),
        Positioned(
          top: 85,
          left: 90,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: HexColor("#EBF9FF"),
                borderRadius: BorderRadius.circular(30)),
            child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                        iconSize: 18,
                        icon: Icon(
                          LineIcons.plus,
                          size: 10,
                          color: Colors.white,
                        ),
                        onPressed: () {
//                        update profile image
                        }))),
          ),
        )
      ],
    );
  }
}
