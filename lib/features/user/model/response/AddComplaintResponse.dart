import 'dart:convert';
AddComplaintResponse addComplaintResponseFromJson(String str) => AddComplaintResponse.fromJson(json.decode(str));
String addComplaintResponseToJson(AddComplaintResponse data) => json.encode(data.toJson());
class AddComplaintResponse {
  AddComplaintResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  AddComplaintResponse.fromJson(dynamic json) {
    _response = json['response'] != null ? Response.fromJson(json['response']) : null;
    _apiVersion = json['apiVersion'];
  }
  Response? _response;
  String? _apiVersion;

  Response? get response => _response;
  String? get apiVersion => _apiVersion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_response != null) {
      map['response'] = _response?.toJson();
    }
    map['apiVersion'] = _apiVersion;
    return map;
  }

}

Response responseFromJson(String str) => Response.fromJson(json.decode(str));
String responseToJson(Response data) => json.encode(data.toJson());
class Response {
  Response({
      dynamic data, 
      String? code, 
      String? message,}){
    _data = data;
    _code = code;
    _message = message;
}

  Response.fromJson(dynamic json) {
    _data = json['data'];
    _code = json['code'];
    _message = json['message'];
  }
  dynamic _data;
  String? _code;
  String? _message;

  dynamic get data => _data;
  String? get code => _code;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = _data;
    map['code'] = _code;
    map['message'] = _message;
    return map;
  }

}