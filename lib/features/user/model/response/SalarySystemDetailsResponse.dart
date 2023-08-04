import 'dart:convert';
SalarySystemDetailsResponse salarySystemDetailsResponseFromJson(String str) => SalarySystemDetailsResponse.fromJson(json.decode(str));
String salarySystemDetailsResponseToJson(SalarySystemDetailsResponse data) => json.encode(data.toJson());
class SalarySystemDetailsResponse {
  SalarySystemDetailsResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  SalarySystemDetailsResponse.fromJson(dynamic json) {
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
      List<SalaryDetailsData>? data,
      String? code, 
      String? message,}){
    _data = data;
    _code = code;
    _message = message;
}

  Response.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(SalaryDetailsData.fromJson(v));
      });
    }
    _code = json['code'];
    _message = json['message'];
  }
  List<SalaryDetailsData>? _data;
  String? _code;
  String? _message;

  List<SalaryDetailsData>? get data => _data;
  String? get code => _code;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['code'] = _code;
    map['message'] = _message;
    return map;
  }

}

SalaryDetailsData dataFromJson(String str) => SalaryDetailsData.fromJson(json.decode(str));
String dataToJson(SalaryDetailsData data) => json.encode(data.toJson());
class SalaryDetailsData {
  SalaryDetailsData({
      num? id, 
      String? title, 
      String? value,}){
    _id = id;
    _title = title;
    _value = value;
}

  SalaryDetailsData.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _value = json['value'];
  }
  num? _id;
  String? _title;
  String? _value;

  num? get id => _id;
  String? get title => _title;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['value'] = _value;
    return map;
  }

}