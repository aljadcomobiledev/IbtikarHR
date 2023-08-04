import 'dart:convert';
NotificationsResponse notificationsResponseFromJson(String str) => NotificationsResponse.fromJson(json.decode(str));
String notificationsResponseToJson(NotificationsResponse data) => json.encode(data.toJson());
class NotificationsResponse {
  NotificationsResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  NotificationsResponse.fromJson(dynamic json) {
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
      List<NotificationsList>? list,}){
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
        _list?.add(NotificationsList.fromJson(v));
      });
    }
  }
  num? _pageSize;
  num? _pageIndex;
  num? _count;
  List<NotificationsList>? _list;

  num? get pageSize => _pageSize;
  num? get pageIndex => _pageIndex;
  num? get count => _count;
  List<NotificationsList>? get list => _list;

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

NotificationsList listFromJson(String str) => NotificationsList.fromJson(json.decode(str));
String listToJson(NotificationsList data) => json.encode(data.toJson());
class NotificationsList {
  NotificationsList({
      num? id, 
      String? title, 
      String? path, 
      String? notificationDate,}){
    _id = id;
    _title = title;
    _path = path;
    _notificationDate = notificationDate;
}

  NotificationsList.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _path = json['path'];
    _notificationDate = json['notificationDate'];
  }
  num? _id;
  String? _title;
  String? _path;
  String? _notificationDate;

  num? get id => _id;
  String? get title => _title;
  String? get path => _path;
  String? get notificationDate => _notificationDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['path'] = _path;
    map['notificationDate'] = _notificationDate;
    return map;
  }

}