import 'dart:convert';
PublicComplaintsResponse publicComplaintsResponseFromJson(String str) => PublicComplaintsResponse.fromJson(json.decode(str));
String publicComplaintsResponseToJson(PublicComplaintsResponse data) => json.encode(data.toJson());
class PublicComplaintsResponse {
  PublicComplaintsResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  PublicComplaintsResponse.fromJson(dynamic json) {
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
      List<Data>? data, 
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
        _data?.add(Data.fromJson(v));
      });
    }
    _code = json['code'];
    _message = json['message'];
  }
  List<Data>? _data;
  String? _code;
  String? _message;

  List<Data>? get data => _data;
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? title, 
      String? body, 
      dynamic attatchmentBase64, 
      dynamic attatchmentCreatedBy, 
      String? creationDate, 
      String? modificationDate, 
      String? createdBy, 
      String? modifiedBy,}){
    _title = title;
    _body = body;
    _attatchmentBase64 = attatchmentBase64;
    _attatchmentCreatedBy = attatchmentCreatedBy;
    _creationDate = creationDate;
    _modificationDate = modificationDate;
    _createdBy = createdBy;
    _modifiedBy = modifiedBy;
}

  Data.fromJson(dynamic json) {
    _title = json['title'];
    _body = json['body'];
    _attatchmentBase64 = json['attatchmentBase64'];
    _attatchmentCreatedBy = json['attatchmentCreatedBy'];
    _creationDate = json['creationDate'];
    _modificationDate = json['modificationDate'];
    _createdBy = json['createdBy'];
    _modifiedBy = json['modifiedBy'];
  }
  String? _title;
  String? _body;
  dynamic _attatchmentBase64;
  dynamic _attatchmentCreatedBy;
  String? _creationDate;
  String? _modificationDate;
  String? _createdBy;
  String? _modifiedBy;

  String? get title => _title;
  String? get body => _body;
  dynamic get attatchmentBase64 => _attatchmentBase64;
  dynamic get attatchmentCreatedBy => _attatchmentCreatedBy;
  String? get creationDate => _creationDate;
  String? get modificationDate => _modificationDate;
  String? get createdBy => _createdBy;
  String? get modifiedBy => _modifiedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['body'] = _body;
    map['attatchmentBase64'] = _attatchmentBase64;
    map['attatchmentCreatedBy'] = _attatchmentCreatedBy;
    map['creationDate'] = _creationDate;
    map['modificationDate'] = _modificationDate;
    map['createdBy'] = _createdBy;
    map['modifiedBy'] = _modifiedBy;
    return map;
  }

}