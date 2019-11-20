import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class GuestUserFavs {
  static GuestUserFavs _singleton = new GuestUserFavs._internal();

  factory GuestUserFavs() {
    return _singleton;
  }

  static GuestUserFavs getInstance() {
    if (_singleton == null) {
      _singleton = new GuestUserFavs._internal();
      return _singleton;
    }
    return _singleton;
  }

  GuestUserFavs._internal();

  final String _carId = "car_fav_Ids";
  final String _homeId = "home_fav_Ids";

//  array of ids

  SharedPreferences sharedPreferences;

  Future<void> setCarIds(String favIds) async {
    sharedPreferences = await SharedPreferences.getInstance();
    List<String> data;

    if (await GuestUserFavs.getInstance().weHaveOldCarData()) {
      data = await GuestUserFavs.getInstance().getCarFavIds();
//      toggle add
      if (alreadyAdded(favIds, data)) {
        data.remove(favIds);
      } else {
        data.add(favIds);
      }
    } else {
      data = new List<String>();
      data.add(favIds);
    }
    await sharedPreferences.setStringList(_carId, data);
    await sharedPreferences.commit();
  }

  Future<void> setHomeIds(String favIds) async {
    sharedPreferences = await SharedPreferences.getInstance();
    List<String> data;

    if (await GuestUserFavs.getInstance().weHaveOldHomeData()) {
      data = await GuestUserFavs.getInstance().getHomeFavIds();
//      toggle add
      if (alreadyAdded(favIds, data)) {
        data.remove(favIds);
      } else {
        data.add(favIds);
      }
    } else {
      data = new List<String>();
      data.add(favIds);
    }
    await sharedPreferences.setStringList(_homeId, data);
    await sharedPreferences.commit();
  }

//alreadyAdded
  bool alreadyAdded(String item, List<String> data) {
    for (int i = 0; i < data.length; i++) {
      if (item == data.elementAt(i)) {
        return true;
      }
    }
    return false;
  }

  Future<void> removeCarIds() async {
    sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList(_carId, null);
    await sharedPreferences.commit();
  }

  Future<void> removeHomeIds() async {
    sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList(_homeId, null);
    await sharedPreferences.commit();
  }

  Future<List<String>> getCarFavIds() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return  sharedPreferences.getStringList(_carId);
  }

  Future<List<String>> getHomeFavIds() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(_homeId);
  }

  Future<bool> weHaveOldCarData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    List<String> data = await GuestUserFavs.getInstance().getCarFavIds();
    if (data != null) {
      if (data.length > 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<bool> weHaveOldHomeData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    List<String> data = await GuestUserFavs.getInstance().getHomeFavIds();
    if (data != null) {
      if (data.length > 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}

// save first fav as array of id [{id:1}]
// add new one get last id convert it to json added to list
// update list with new json
