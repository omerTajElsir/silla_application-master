import 'package:flutter/material.dart';
import 'package:silla_application/utils/AppColors.dart';

class appBtn extends StatelessWidget {
  var text = "";
  var width = 45.0;
  var height = 56.0;
  Function onTap;

  appBtn({@required this.text, @required this.width, this.height,@required  this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.all(25.0),
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
//                    border: Border.all(color: Colors.greenAccent,width: 1.0)
      ),
      child: FlatButton(
        color: AppColors.mainColor,
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}


class appBtnWithChild extends StatelessWidget {
  var child;
  var width = 45.0;
  var height = 56.0;
  Function onTap;

  appBtnWithChild({@required this.child, @required this.width, this.height,@required  this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.all(25.0),
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
//                    border: Border.all(color: Colors.greenAccent,width: 1.0)
      ),
      child: FlatButton(
        color: AppColors.mainColor,
        onPressed: onTap,
        child: child,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
