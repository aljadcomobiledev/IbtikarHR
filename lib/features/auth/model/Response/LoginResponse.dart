import 'dart:convert';
LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  LoginResponse.fromJson(dynamic json) {
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
      Data? data, 
      num? code, 
      String? token, 
      String? message, 
      String? expiration,}){
    _data = data;
    _code = code;
    _token = token;
    _message = message;
    _expiration = expiration;
}

  Response.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _code = json['code'];
    _token = json['token'];
    _message = json['message'];
    _expiration = json['expiration'];
  }
  Data? _data;
  num? _code;
  String? _token;
  String? _message;
  String? _expiration;

  Data? get data => _data;
  num? get code => _code;
  String? get token => _token;
  String? get message => _message;
  String? get expiration => _expiration;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['code'] = _code;
    map['token'] = _token;
    map['message'] = _message;
    map['expiration'] = _expiration;
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? username, 
      String? firstName, 
      String? lastName, 
      String? jobTitle,
      String? mobileNumber,
      String? nationalId, 
      String? birthDate,}){
    _username = username;
    _firstName = firstName;
    _lastName = lastName;
    _jobTitle = jobTitle;
    _mobileNumber = mobileNumber;
    _nationalId = nationalId;
    _birthDate = birthDate;
}

  Data.fromJson(dynamic json) {
    _username = json['username'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _jobTitle = json['jobTitle'];
    _mobileNumber = json['mobileNumber'];
    _nationalId = json['nationalId'];
    _birthDate = json['birthDate'];
  }
  String? _username;
  String? _firstName;
  String? _lastName;
  String? _jobTitle;
  String? _mobileNumber;
  String? _nationalId;
  String? _birthDate;

  String? get username => _username;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get jobTitle => _jobTitle;
  String? get mobileNumber => _mobileNumber;
  String? get nationalId => _nationalId;
  String? get birthDate => _birthDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['jobTitle'] = _jobTitle;
    map['mobileNumber'] = _mobileNumber;
    map['nationalId'] = _nationalId;
    map['birthDate'] = _birthDate;
    return map;
  }

}