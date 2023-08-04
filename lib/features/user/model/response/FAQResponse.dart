import 'dart:convert';
FaqResponse faqResponseFromJson(String str) => FaqResponse.fromJson(json.decode(str));
String faqResponseToJson(FaqResponse data) => json.encode(data.toJson());
class FaqResponse {
  FaqResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  FaqResponse.fromJson(dynamic json) {
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
      List<FAQDetails>? list,}){
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
        _list?.add(FAQDetails.fromJson(v));
      });
    }
  }
  num? _pageSize;
  num? _pageIndex;
  num? _count;
  List<FAQDetails>? _list;

  num? get pageSize => _pageSize;
  num? get pageIndex => _pageIndex;
  num? get count => _count;
  List<FAQDetails>? get list => _list;

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

FAQDetails listFromJson(String str) => FAQDetails.fromJson(json.decode(str));
String listToJson(FAQDetails data) => json.encode(data.toJson());
class FAQDetails {
  FAQDetails({
      num? id, 
      String? title, 
      String? body,}){
    _id = id;
    _title = title;
    _body = body;
}

  FAQDetails.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
  }
  num? _id;
  String? _title;
  String? _body;

  num? get id => _id;
  String? get title => _title;
  String? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body'] = _body;
    return map;
  }

}