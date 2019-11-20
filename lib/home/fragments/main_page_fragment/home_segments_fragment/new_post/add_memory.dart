import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';
import 'package:silla_application/custom_widgets/add_post_header.dart';
import 'package:silla_application/custom_widgets/buttons.dart';
import 'package:silla_application/custom_widgets/custom_drop_down_menu.dart';
import 'package:silla_application/custom_widgets/custom_text_filed.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../AppHome.dart';
//invitation

class AddMemoryScreen extends StatefulWidget {
  @override
  _AddMemoryScreenState createState() => _AddMemoryScreenState();
}

class _AddMemoryScreenState extends State<AddMemoryScreen> {
  DateTime _selectedDateTime;
  var _list = ["hall1", "hall2"];
  String _selectedItem;
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

  var _key = new GlobalKey<ScaffoldState>();
  TextEditingController detailsCtrl = new TextEditingController();
  var _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text("اضافة دعوه جديده"),
      ),
      body: ListView(
        children: <Widget>[form()],
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:40.0,right: 40),
                    child: InkWell(
                      onTap: () => showMeetingDatePicker(context),
                      child: Container(
                        //width: MediaQuery.of(context).size.width / 3,
                        height: 43,
                        margin: EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: _selectedDateTime != null
                              ? Text(_selectedDateTime.toIso8601String())
                              : Text("اختار التاريخ"),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          appTextAreaWithCtrl(
              label: "التفاصيل",
              hint: "ادخل التفاصيل",
              onValidation: (String text) {
                if (text.isEmpty) {
                  return "التفاصيل مطلوبه";
                }
              },
              textEditingController: detailsCtrl),
          appBtn(
              text: "نشر",
              width: MediaQuery.of(context).size.width / 1.2,
              onTap: () {})
        ],
      ),
    );
  }

  Widget pickImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 180,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: isImage == 1?FileImage(img):null,
                  radius: 50.0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      isImage == 1?Container():Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.add,size: 80,color: Colors.grey.shade800,),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("add");
                          pickerGallary(0);
                        },
                      )
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "اضافة صوره",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  showMeetingDatePicker(BuildContext context) {
    print("canceltext: ${PickerLocalizations.of(context).cancelText}");
    Picker pe = new Picker(
        hideHeader: true,
        adapter: new DateTimePickerAdapter(type: PickerDateTimeType.kYMD),
        onConfirm: (Picker picker, List value) {
          setState(() {
            DateTime caRig = (picker.adapter as DateTimePickerAdapter).value;

            if (caRig.isBefore(DateTime.now())) {
              _key.currentState.showSnackBar(
                  SnackBar(content: Text("التاريخ يجب ان يكون في المستقبل")));
            } else {
              _selectedDateTime = caRig;
            }
          });
        });

    List<Widget> actions = [
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text("الغاء")),
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
            pe.onConfirm(pe, pe.selecteds);
          },
          child: new Text("تأكيد"))
    ];
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text("تاريخ الدعوه"),
            actions: actions,
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[pe.makePicker()],
              ),
            ),
          );
        });
  }

  void _wedd() {
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
