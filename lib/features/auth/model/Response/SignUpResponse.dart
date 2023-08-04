import 'dart:convert';
SignUpResponse signUpResponseFromJson(String str) => SignUpResponse.fromJson(json.decode(str));
String signUpResponseToJson(SignUpResponse data) => json.encode(data.toJson());
class SignUpResponse {
  SignUpResponse({
      Response? response,
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  SignUpResponse.fromJson(dynamic json) {
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
      String? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  Response.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  String? _status;
  String? _message;

  String? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}