import 'dart:convert';

import 'package:eastern/features/user/model/response/ItemDetailsResponse.dart';

OffersResponse offersResponseFromJson(String str) =>
    OffersResponse.fromJson(json.decode(str));

String offersResponseToJson(OffersResponse data) => json.encode(data.toJson());

class OffersResponse {
  OffersResponse({
    Response? response,
    String? apiVersion,
  }) {
    _response = response;
    _apiVersion = apiVersion;
  }

  OffersResponse.fromJson(dynamic json) {
    _response =
        json['response'] != null ? Response.fromJson(json['response']) : null;
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
    NewsData? data,
    String? code,
    String? message,
  }) {
    _data = data;
    _code = code;
    _message = message;
  }

  Response.fromJson(dynamic json) {
    _data = json['data'] != null ? NewsData.fromJson(json['data']) : null;
    _code = json['code'];
    _message = json['message'];
  }

  NewsData? _data;
  String? _code;
  String? _message;

  NewsData? get data => _data;

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

NewsData dataFromJson(String str) => NewsData.fromJson(json.decode(str));

String dataToJson(NewsData data) => json.encode(data.toJson());

class NewsData {
  NewsData({
    num? pageSize,
    num? pageIndex,
    num? count,
    List<ItemDetailsResponse>? list,
  }) {
    _pageSize = pageSize;
    _pageIndex = pageIndex;
    _count = count;
    _list = list;
  }

  NewsData.fromJson(dynamic json) {
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
