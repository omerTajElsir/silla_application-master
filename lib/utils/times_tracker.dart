import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class TimesTracker {
  static TimesTracker _singleton = new TimesTracker._internal();
  int _time_for_first_time = 0;


  factory TimesTracker() {
    return _singleton;
  }

  static TimesTracker getInstance() {
    if (_singleton == null) {
      _singleton = new TimesTracker._internal();
      return _singleton;
    }
    return _singleton;
  }

  TimesTracker._internal();

  final String TIME_FOR_FIRST_TIME = "TIME";

  SharedPreferences sharedPreferences;

  void setTimeForFirstTime() async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(TIME_FOR_FIRST_TIME, 1);
    sharedPreferences.commit();
  }

  Future<int> getLastTime() async {
    sharedPreferences = await SharedPreferences.getInstance();
    int times = sharedPreferences.get(TIME_FOR_FIRST_TIME);
    return times == null ? 0 : times;
  }
}
