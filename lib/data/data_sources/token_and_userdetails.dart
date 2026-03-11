import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenAndUserDetails {
  static String? token;
  static String? id;
  static String? name;
  static String? profilePic;
  static String? email;
  static bool? isAlreadyLoggedIn;
  static String? latitude;
  static String? longitude;
  static String? location;

  static Future save() async {
    await const FlutterSecureStorage().write(key: 'token', value: token);
    final sharedPreference = await SharedPreferences.getInstance();
    await sharedPreference.setString('email', email!);
    await sharedPreference.setString('name', name!);
    await sharedPreference.setString('id', id!);
    if (profilePic != null) {
      await sharedPreference.setString('profilePic', profilePic!);
    }
    await sharedPreference.setBool(
      'isAlreadyLoggedIn',
      isAlreadyLoggedIn ?? false,
    );
  }

  // static Future saveLocation(LocationModel locationModel) async {
  //   latitude = locationModel.latitude;
  //   longitude = locationModel.longitude;
  //   location = locationModel.displayName;
  //   final sharedPreference = await SharedPreferences.getInstance();
  //   await sharedPreference.setString('latitude', latitude!);
  //   await sharedPreference.setString('longitude', longitude!);
  //   await sharedPreference.setString('location', location!);
  // }

  static Future get() async {
    token = await const FlutterSecureStorage().read(key: 'token');
    final sharedPreference = await SharedPreferences.getInstance();
    name = sharedPreference.getString('name');
    id = sharedPreference.getString('id');
    profilePic = sharedPreference.getString('profilePic');
    email = sharedPreference.getString('email');
    isAlreadyLoggedIn = sharedPreference.getBool('isAlreadyLoggedIn');
    latitude = sharedPreference.getString('latitude');
    longitude = sharedPreference.getString('longitude');
    location = sharedPreference.getString('location');
  }

  static Future clear() async {
    token = null;
    id = null;
    name = null;
    profilePic = null;
    email = null;
    isAlreadyLoggedIn = null;
    await const FlutterSecureStorage().deleteAll();
    var sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove('name');
    await sharedPref.remove('id');
    await sharedPref.remove('profilePic');
    await sharedPref.remove('email');
    await sharedPref.remove('isAlreadyLoggedIn');
  }
}
