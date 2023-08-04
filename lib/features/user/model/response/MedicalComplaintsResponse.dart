import 'dart:convert';
MedicalComplaintsResponse medicalComplaintsResponseFromJson(String str) => MedicalComplaintsResponse.fromJson(json.decode(str));
String medicalComplaintsResponseToJson(MedicalComplaintsResponse data) => json.encode(data.toJson());
class MedicalComplaintsResponse {
  MedicalComplaintsResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  MedicalComplaintsResponse.fromJson(dynamic json) {
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
      List<MedicalComplaintItem>? list,}){
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
        _list?.add(MedicalComplaintItem.fromJson(v));
      });
    }
  }
  num? _pageSize;
  num? _pageIndex;
  num? _count;
  List<MedicalComplaintItem>? _list;

  num? get pageSize => _pageSize;
  num? get pageIndex => _pageIndex;
  num? get count => _count;
  List<MedicalComplaintItem>? get list => _list;

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

MedicalComplaintItem listFromJson(String str) => MedicalComplaintItem.fromJson(json.decode(str));
String listToJson(MedicalComplaintItem data) => json.encode(data.toJson());
class MedicalComplaintItem {
  List({
      num? id, 
      String? title, 
      String? body, 
      String? attachmentPath, 
      String? creationDate, 
      String? modificationDate, 
      String? createdBy, 
      String? modifiedBy,}){
    _id = id;
    _title = title;
    _body = body;
    _attachmentPath = attachmentPath;
    _creationDate = creationDate;
    _modificationDate = modificationDate;
    _createdBy = createdBy;
    _modifiedBy = modifiedBy;
}

  MedicalComplaintItem.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
    _attachmentPath = json['attachmentPath'];
    _creationDate = json['creationDate'];
    _modificationDate = json['modificationDate'];
    _createdBy = json['createdBy'];
    _modifiedBy = json['modifiedBy'];
  }
  num? _id;
  String? _title;
  String? _body;
  String? _attachmentPath;
  String? _creationDate;
  String? _modificationDate;
  String? _createdBy;
  String? _modifiedBy;

  num? get id => _id;
  String? get title => _title;
  String? get body => _body;
  String? get attachmentPath => _attachmentPath;
  String? get creationDate => _creationDate;
  String? get modificationDate => _modificationDate;
  String? get createdBy => _createdBy;
  String? get modifiedBy => _modifiedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body'] = _body;
    map['attachmentPath'] = _attachmentPath;
    map['creationDate'] = _creationDate;
    map['modificationDate'] = _modificationDate;
    map['createdBy'] = _createdBy;
    map['modifiedBy'] = _modifiedBy;
    return map;
  }

}