import 'dart:convert';

import 'ItemDetailsResponse.dart';
BoardMembersResponse boardMembersResponseFromJson(String str) => BoardMembersResponse.fromJson(json.decode(str));
String boardMembersResponseToJson(BoardMembersResponse data) => json.encode(data.toJson());
class BoardMembersResponse {
  BoardMembersResponse({
      Response? response, 
      String? apiVersion,}){
    _response = response;
    _apiVersion = apiVersion;
}

  BoardMembersResponse.fromJson(dynamic json) {
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
      List<ItemDetailsResponse>? list,}){
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
        _list?.add(ItemDetailsResponse.fromJson(v));
      });
    }
  }
  num? _pageSize;
  num? _pageIndex;
  num? _count;
  List<ItemDetailsResponse>? _list;

  num? get pageSize => _pageSize;
  num? get pageIndex => _pageIndex;
  num? get count => _count;
  List<ItemDetailsResponse>? get list => _list;

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
