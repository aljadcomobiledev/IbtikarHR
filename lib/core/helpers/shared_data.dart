import 'dart:convert';
import 'dart:io';
import 'package:IbtikarHR/features/auth/model/Response/LoginResponse.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedData {
  static const String LANGUAGE = 'language';
  static const String UserName = 'username';
  static const String AccessToken = 'token';
  static const int pageSize = 10;
  static const int pageBiggerSize = 20;

  static Future<void> saveUserData(LoginResponse model) async {
    // SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", json.encode(model.toJson()));
  }

  static Future<void> saveQr(String code) async {
    // SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("qrCode", code);

  }

  static Future<void> logout() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", "");
    prefs.remove("user");
    print("User : ${prefs.getString("user")}");
  }
}
