import 'package:flutter/material.dart';

class appTextFiled extends StatefulWidget {
  var label;
  IconData icon;
  bool isPasswordFiled;
  Function filedValidation;
  TextInputType keyBoardType;
  double filed_margin;
  TextEditingController controller;

  appTextFiled(
      {this.label,
      this.icon,
      this.isPasswordFiled,
      this.filedValidation,
      this.keyBoardType,
      this.filed_margin,
      this.controller});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return appTextFiledState();
  }
}

class appTextFiledState extends State<appTextFiled> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: widget.filed_margin != null ? widget.filed_margin : 20.0,
          bottom: 5.0),
      child: TextFormField(
        validator: widget.filedValidation,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 3.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: widget.label,
//          hintText: widget.label,
          prefixIcon: Icon(
            widget.icon,
            size: 18,
          ),
          suffix: widget.isPasswordFiled != null
              ? IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: !widget.isPasswordFiled ? Colors.black : Colors.grey,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isPasswordFiled = !widget.isPasswordFiled;
                    });
                  })
              : IconButton(
                  icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 18,
                ),
            onPressed: (){},
          ),
          labelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        obscureText: widget.isPasswordFiled == null
            ? false
            : widget.isPasswordFiled ? true : false,
        keyboardType: widget.keyBoardType == null
            ? TextInputType.text
            : widget.keyBoardType,
      ),
    );
  }
}

class appTextFiledWithCtrl extends StatefulWidget {
  String label;
  String hint;
  Function onValidation;
  TextEditingController textEditingController;

  appTextFiledWithCtrl(
      {this.label, this.hint, this.onValidation, this.textEditingController});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return appTextFiledWithCtrlState(onValidation: onValidation);
  }
}

class appTextFiledWithCtrlState extends State<appTextFiledWithCtrl> {
  Function onValidation;

  appTextFiledWithCtrlState({this.onValidation});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 15.0),
      child: TextFormField(
        controller: widget.textEditingController,
        validator: onValidation,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: widget.label,
          labelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class appTextAreaWithCtrl extends StatefulWidget {
  String label;
  String hint;
  Function onValidation;
  TextEditingController textEditingController;

  appTextAreaWithCtrl(
      {@required this.label,@required this.hint,@required this.onValidation,@required this.textEditingController});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return appTextAreaWithCtrlState(onValidation: onValidation);
  }
}

class appTextAreaWithCtrlState extends State<appTextAreaWithCtrl> {
  Function onValidation;

  appTextAreaWithCtrlState({this.onValidation});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 15.0),
      child: TextFormField(
        controller: widget.textEditingController,
        validator: onValidation,
        maxLines: 3,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: widget.label,
          hintText: widget.hint,
          labelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
