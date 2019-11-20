import 'package:connectivity/connectivity.dart';
import 'dart:async';

class InternetConnectivity {
  static Future<bool> weHaveAnInternetConnection() async {
    var connectivityResult = await (new Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }
}