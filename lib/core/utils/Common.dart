import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/global_state.dart';
import '../helpers/shared_data.dart';

class Common {

  static Future requestHeader() async {
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptCharsetHeader: "charset=utf-8"
    };
    return headers;
  }

  static Future requestHeaderWithToken() async {
    String? token = GlobalState.instance.get("token");

    Map<String, String> headers = {
      'Content-type': 'application/json',
      "Authorization": "Bearer ${token ?? ""}"
    };
    return headers;
  }


}
