import 'dart:convert';
HistoryResponse historyResponseFromJson(String str) => HistoryResponse.fromJson(json.decode(str));
String historyResponseToJson(HistoryResponse data) => json.encode(data.toJson());
class HistoryResponse {
  HistoryResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  HistoryResponse.fromJson(dynamic json) {
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
      num? id, 
      String? title, 
      String? body, 
      String? attatchmentPath,}){
    _id = id;
    _title = title;
    _body = body;
    _attatchmentPath = attatchmentPath;
}

  Response.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
    _attatchmentPath = json['attatchmentPath'];
  }
  num? _id;
  String? _title;
  String? _body;
  String? _attatchmentPath;

  num? get id => _id;
  String? get title => _title;
  String? get body => _body;
  String? get attatchmentPath => _attatchmentPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body'] = _body;
    map['attatchmentPath'] = _attatchmentPath;
    return map;
  }

}