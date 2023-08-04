import 'dart:convert';
ContactUsResponse contactUsResponseFromJson(String str) => ContactUsResponse.fromJson(json.decode(str));
String contactUsResponseToJson(ContactUsResponse data) => json.encode(data.toJson());
class ContactUsResponse {
  ContactUsResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  ContactUsResponse.fromJson(dynamic json) {
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
      num? pageSize, 
      num? pageIndex, 
      num? count, 
      List<ContactUsItem>? list,}){
    _pageSize = pageSize;
    _pageIndex = pageIndex;
    _count = count;
    _list = list;
}

  Response.fromJson(dynamic json) {
    _pageSize = json['pageSize'];
    _pageIndex = json['pageIndex'];
    _count = json['count'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(ContactUsItem.fromJson(v));
      });
    }
  }
  num? _pageSize;
  num? _pageIndex;
  num? _count;
  List<ContactUsItem>? _list;

  num? get pageSize => _pageSize;
  num? get pageIndex => _pageIndex;
  num? get count => _count;
  List<ContactUsItem>? get list => _list;

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

ContactUsItem listFromJson(String str) => ContactUsItem.fromJson(json.decode(str));
String listToJson(ContactUsItem data) => json.encode(data.toJson());
class ContactUsItem {
  ContactUsItem({
      String? title, 
      List<Info>? info,}){
    _title = title;
    _info = info;
}

  ContactUsItem.fromJson(dynamic json) {
    _title = json['title'];
    if (json['info'] != null) {
      _info = [];
      json['info'].forEach((v) {
        _info?.add(Info.fromJson(v));
      });
    }
  }
  String? _title;
  List<Info>? _info;

  String? get title => _title;
  List<Info>? get info => _info;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    if (_info != null) {
      map['info'] = _info?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Info infoFromJson(String str) => Info.fromJson(json.decode(str));
String infoToJson(Info data) => json.encode(data.toJson());
class Info {
  Info({
      String? name, 
      String? value,}){
    _name = name;
    _value = value;
}

  Info.fromJson(dynamic json) {
    _name = json['name'];
    _value = json['value'];
  }
  String? _name;
  String? _value;

  String? get name => _name;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['value'] = _value;
    return map;
  }

}