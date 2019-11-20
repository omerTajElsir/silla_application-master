import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silla_application/custom_widgets/add_post_header.dart';
import 'package:silla_application/custom_widgets/buttons.dart';
import 'package:silla_application/custom_widgets/custom_text_filed.dart';

import '../../../../AppHome.dart';




class AddHelpScreen extends StatefulWidget {
  @override
  _AddHelpScreenState createState() => _AddHelpScreenState();
}

class _AddHelpScreenState extends State<AddHelpScreen> {
  var _formKey = new GlobalKey<FormState>();
  TextEditingController detailCtrl = new TextEditingController();
  TextEditingController beneficiaryCtrl = new TextEditingController();
  TextEditingController moneyCtrl = new TextEditingController();


  File img;
  int check = 0,isImage = 0;
  pickerGallary(int indx) async {
    print('Picker is called');

    if(indx ==0){
      img = await ImagePicker.pickImage(source: ImageSource.camera);
    }else{
      img = await ImagePicker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      isImage = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اضافة معونه جديده"),),
      body: ListView(
        children: <Widget>[
             form()
        ],
      ),
    );
  }


  Widget form() {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            addPostHeader(),
            GestureDetector(
              onTap: (){
                print("tab");
                _wedd();
              },
              child: isImage == 0?Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  //width: 150,
                  height: 220,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(0)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            //backgroundImage: isImage == 1?FileImage(img):null,
                            radius: 50.0,
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(Icons.add,size: 80,color: Colors.grey.shade800,),
                                ),
                              ],
                            )
                        ),

                      ],
                    ),
                  ),
                ),
              ):Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  fit: BoxFit.cover,
                  image: isImage == 1?FileImage(img):AssetImage("assets/person.jpg",),
                ),
              )
            ),
            appTextAreaWithCtrl(
              textEditingController: detailCtrl,
              hint: "تفاصيل المعونه",
              onValidation: (String text) {
                if (text.isEmpty) {
                  return "التفاصيل مطلوبه";
                }
              },
              label: "التفاصيل",
            ),
            appTextFiledWithCtrl(
              textEditingController: beneficiaryCtrl,
              hint: "اسم المستفيد من المعونه",
              onValidation: (String text) {
                if (text.isEmpty) {
                  return "اسم المستفيد مطلوب";
                }
              },
              label: "المستفيد",
            ),
            appTextFiledWithCtrl(
              hint: "ادخل المبلغ",
              onValidation: (String text) {
                if (text.isEmpty) {
                  return "المبلغ مطلوب";
                }
              },
              label: "المبلغ",
            ),
            appBtn(
                text: "نشر",
                width: MediaQuery.of(context).size.width / 1.2,
                onTap: () {})
          ],
        ));
  }


  void _wedd() {
    print("tap");
    double screenheught = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    scaffoldKey.currentState.showBottomSheet((context){
      return new Container(


        height: 160,
        child: Material(
          color: Colors.white,
          animationDuration: Duration(milliseconds: 500),
          elevation: 0.0,
          //borderRadius: BorderRadius.only(topLeft:  Radius.circular(25.0), topRight:  Radius.circular(25.0)),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              GestureDetector(
                onTap: () {
                  pickerGallary(1);
                  Navigator.pop(context);
                },
                child:
                Padding(
                  padding: EdgeInsets.only(bottom: 0,left: 30,right: 30),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: 80,
                          child: Icon(Icons.image,size: 40,color: Colors.purple,),
                        ),

                        SizedBox(height: 10,),
                        Text(
                            "Gallery"
                        ),
                        SizedBox(height: 10,),
                      ],


                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  pickerGallary(0);
                  Navigator.pop(context);
                },
                child:Padding(
                  padding: EdgeInsets.only(bottom: 0,left: 30,right: 30),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: 80,
                          child: Icon(Icons.camera,size: 40,color: Colors.cyan,),
                        ),

                        SizedBox(height: 10,),
                        Text(
                            "Camera"),
                        SizedBox(height: 10,),
                      ],


                    ),
                  ),
                ),
              )


            ],
          ),

        ),
      );


    });


  }
}
