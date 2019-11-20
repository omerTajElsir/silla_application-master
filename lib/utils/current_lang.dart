import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class AppLang{

  static  AppLang _singleton = new AppLang._internal();

  factory AppLang() {
    return _singleton;
  }

  static AppLang getInstance(){
    if(_singleton==null){
      _singleton = new AppLang._internal();
      return _singleton;
    }
    return _singleton;
  }

  AppLang._internal();



  String CURRENT_LANG="CURRENT_LANG";

  SharedPreferences sharedPreferences;

  void setLang(String lang) async{
    sharedPreferences= await SharedPreferences.getInstance();
    sharedPreferences.setString(CURRENT_LANG, lang);
    sharedPreferences.commit();
  }

  
  Future<String> getLang() async{
    sharedPreferences= await SharedPreferences.getInstance();
    return sharedPreferences.get(CURRENT_LANG);
  }

}