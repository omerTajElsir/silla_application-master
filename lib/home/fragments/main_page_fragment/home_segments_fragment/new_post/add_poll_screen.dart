import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silla_application/custom_widgets/add_post_header.dart';
import 'package:silla_application/custom_widgets/buttons.dart';
import 'package:silla_application/custom_widgets/custom_text_filed.dart';

import '../../../../AppHome.dart';

//invitation

class AddPollScreen extends StatefulWidget {
  @override
  _AddPollScreenState createState() => _AddPollScreenState();
}

class _AddPollScreenState extends State<AddPollScreen> {
  var _formKey = new GlobalKey<FormState>();

  TextEditingController firstChoice = new TextEditingController();
  TextEditingController secondChoice = new TextEditingController();
  TextEditingController thirdChoice = new TextEditingController();

  int i;
  List _options = new List();
  Widget _opt1 =appTextFiledWithCtrl(
    //textEditingController: firstChoice,
    hint: "الخيار 1",
    onValidation: (String text) {
      if (text.isEmpty) {
        return "الخيار الاول مطلوب";
      }
    },
    label: "الخيار 1",
  );
  Widget _opt2 =appTextFiledWithCtrl(
    //textEditingController: firstChoice,
    hint: "الخيار 2",
    onValidation: (String text) {
      if (text.isEmpty) {
        return "الخيار الاول مطلوب";
      }
    },
    label: "الخيار 2",
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _options.add(_opt1);
    _options.add(_opt2);
  }

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
      appBar: AppBar(
        title: Text("اضافة استطلاع جديد"),
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
            appTextFiledWithCtrl(
              textEditingController: firstChoice,
              hint: "اسال السؤال",
              onValidation: (String text) {
                if (text.isEmpty) {
                  return "السؤال";
                }
              },
              label: "السؤال",
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: _options.length,
                itemBuilder: (ctx, index) {
                  return _options[index];
                }),
            Container(
              margin: EdgeInsets.only(left: 25.0,right: 25,top: 25),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
//                    border: Border.all(color: Colors.greenAccent,width: 1.0)
              ),
              child: FlatButton(
                color: Colors.grey,
                onPressed: (){
                  Widget wid;
                  setState(() {
                    i = _options.length+1;
                    wid = appTextFiledWithCtrl(
                      //textEditingController: firstChoice,
                      hint: "الخيار $i",
                      onValidation: (String text) {
                        if (text.isEmpty) {
                          return "الخيار الاول مطلوب";
                        }
                      },
                      label: "الخيار $i",
                    );

                    _options.add(wid);
                  });
                },
                child: Text(
                  "اضافة خيارات",
                  style: TextStyle(color: Colors.white),
                ),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
              ),
            ),
            appBtn(
                text: "نشر",
                width: MediaQuery.of(context).size.width / 1.2,
                onTap: () {})
          ],
        ));
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

//DynamicFields
class DynamicFields {
  Widget textField;
  TextEditingController textEditingController;

  DynamicFields(
      {@required this.textEditingController, @required this.textField});
}
