//import 'dart:async';
//import 'package:home_wheel_application/models/user_model.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//class Session {
//  static Session _singleton = new Session._internal();
//
//  factory Session() {
//    return _singleton;
//  }
//
//  static Session getInstance() {
//    if (_singleton == null) {
//      _singleton = new Session._internal();
//      return _singleton;
//    }
//    return _singleton;
//  }
//
//  Session._internal();
//
//  final String USER_TOKKEN = "USER_TOKKEN";
//  final String USER_PHONE = "USER_PHONE";
//
//  final String USER_IAMGE = "USER_IMAGE_PATH";
//  final String USER_NAME = "USER_NAME";
//
//  SharedPreferences sharedPreferences;
//
//  void setUser(User user) async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    sharedPreferences.setString(USER_TOKKEN, user.token);
//    sharedPreferences.setString(USER_PHONE, user.phone);
//    sharedPreferences.setString(USER_NAME, user.name);
////    sharedPreferences.setString(USER_IAMGE, user.image);
//
//    sharedPreferences.commit();
//  }
//
//  Future destroyUser() async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    sharedPreferences.setString(USER_TOKKEN, null);
//    sharedPreferences.setString(USER_PHONE, null);
//    sharedPreferences.setString(USER_NAME, null);
////    sharedPreferences.setString(USER_IAMGE, null);
//
//    sharedPreferences.commit();
//  }
//
//  Future<User> getCurrentUser() async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    User currentUser = new User(
//      token: sharedPreferences.get(USER_TOKKEN),
//      phone: sharedPreferences.get(USER_PHONE),
//      name: sharedPreferences.get(USER_NAME),
////      image: sharedPreferences.get(USER_IAMGE),
//    );
//    return currentUser;
//  }
//
//  Future<bool> isAuthorized() async {
//    User user = await Session.getInstance().getCurrentUser();
//    if (user.token == null) {
//      return false;
//    } else {
//      if (user.token == null) {
//        return false;
//      } else {
//        return true;
//      }
//    }
//  }
//}
