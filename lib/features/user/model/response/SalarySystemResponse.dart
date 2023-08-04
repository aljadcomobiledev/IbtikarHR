import 'dart:convert';
SalarySystemResponse salarySystemResponseFromJson(String str) => SalarySystemResponse.fromJson(json.decode(str));
String salarySystemResponseToJson(SalarySystemResponse data) => json.encode(data.toJson());
class SalarySystemResponse {
  SalarySystemResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  SalarySystemResponse.fromJson(dynamic json) {
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
      String? code, 
      String? message,}){
    _data = data;
    _code = code;
    _message = message;
}

  Response.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _code = json['code'];
    _message = json['message'];
  }
  Data? _data;
  String? _code;
  String? _message;

  Data? get data => _data;
  String? get code => _code;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['code'] = _code;
    map['message'] = _message;
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? pageSize, 
      num? pageIndex, 
      num? count, 
      List<SalarySystemItem>? list,}){
    _pageSize = pageSize;
    _pageIndex = pageIndex;
    _count = count;
    _list = list;
}

  Data.fromJson(dynamic json) {
    _pageSize = json['pageSize'];
    _pageIndex = json['pageIndex'];
    _count = json['count'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(SalarySystemItem.fromJson(v));
      });
    }
  }
  num? _pageSize;
  num? _pageIndex;
  num? _count;
  List<SalarySystemItem>? _list;

  num? get pageSize => _pageSize;
  num? get pageIndex => _pageIndex;
  num? get count => _count;
  List<SalarySystemItem>? get list => _list;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pageSize'] = _pageSize;
    map['pageIndex'] = _pageIndex;
    map['count'] = _count;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

SalarySystemItem listFromJson(String str) => SalarySystemItem.fromJson(json.decode(str));
String listToJson(SalarySystemItem data) => json.encode(data.toJson());
class SalarySystemItem {
  SalarySystemItem({
      num? id, 
      String? userCode, 
      String? title, 
      String? path, 
      String? uploadDate,}){
    _id = id;
    _userCode = userCode;
    _title = title;
    _path = path;
    _uploadDate = uploadDate;
}

  SalarySystemItem.fromJson(dynamic json) {
    _id = json['id'];
    _userCode = json['userCode'];
    _title = json['title'];
    _path = json['path'];
    _uploadDate = json['uploadDate'];
  }
  num? _id;
  String? _userCode;
  String? _title;
  String? _path;
  String? _uploadDate;

  num? get id => _id;
  String? get userCode => _userCode;
  String? get title => _title;
  String? get path => _path;
  String? get uploadDate => _uploadDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userCode'] = _userCode;
    map['title'] = _title;
    map['path'] = _path;
    map['uploadDate'] = _uploadDate;
    return map;
  }

}