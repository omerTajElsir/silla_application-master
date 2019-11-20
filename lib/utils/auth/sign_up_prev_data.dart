//import 'dart:async';
//
//import 'package:home_wheel_application/models/user_model.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//class SignUpPrevData {
//  static SignUpPrevData _singleton = new SignUpPrevData._internal();
//
//  factory SignUpPrevData() {
//    return _singleton;
//  }
//
//  static SignUpPrevData getInstance() {
//    if (_singleton == null) {
//      _singleton = new SignUpPrevData._internal();
//      return _singleton;
//    }
//    return _singleton;
//  }
//
//  SignUpPrevData._internal();
//
//  final String USER_PHONE = "USER_PHONE";
//
//  SharedPreferences sharedPreferences;
//
//  void setPhone(User user) async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    sharedPreferences.setString(USER_PHONE, user.phone);
//    sharedPreferences.commit();
//  }
//
//  Future destroyPhone() async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    sharedPreferences.setString(USER_PHONE, null);
//    sharedPreferences.commit();
//  }
//
//  Future<String> getPhone() async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    User currentUser = new User(
//      phone: sharedPreferences.get(USER_PHONE),
//    );
//    return  currentUser.phone==null? null: currentUser.phone;
//  }
//
//  Future<bool> isTrySignUpButNotComplete() async {
//    String phone = await SignUpPrevData.getInstance().getPhone();
//    if (phone == null) {
//      return false;
//    } else {
//      return true;
//    }
//  }
//}
