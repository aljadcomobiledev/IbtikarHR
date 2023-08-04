import 'dart:convert';

ComplaintDetailsResponse complaintDetailsResponseFromJson(String str) =>
    ComplaintDetailsResponse.fromJson(json.decode(str));

String complaintDetailsResponseToJson(ComplaintDetailsResponse data) =>
    json.encode(data.toJson());

class ComplaintDetailsResponse {
  ComplaintDetailsResponse({
    Response? response,
    String? apiVersion,
  }) {
    _response = response;
    _apiVersion = apiVersion;
  }

  ComplaintDetailsResponse.fromJson(dynamic json) {
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
    ComplaintDetails? data,
    String? code,
    String? message,
  }) {
    _data = data;
    _code = code;
    _message = message;
  }

  Response.fromJson(dynamic json) {
    _data =
        json['data'] != null ? ComplaintDetails.fromJson(json['data']) : null;
    _code = json['code'];
    _message = json['message'];
  }

  ComplaintDetails? _data;
  String? _code;
  String? _message;

  ComplaintDetails? get data => _data;

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

ComplaintDetails dataFromJson(String str) =>
    ComplaintDetails.fromJson(json.decode(str));

String dataToJson(ComplaintDetails data) => json.encode(data.toJson());

class ComplaintDetails {
  ComplaintDetails({
    num? id,
    String? title,
    String? body,
    String? attatchmentPath,
    String? creationDate,
    String? modificationDate,
    String? createdBy,
    String? modifiedBy,
    List<MedicalComplaintResponses>? medicalComplaintResponses,
    List<MedicalComplaintResponses>? publicComplaintResponses,
  }) {
    _id = id;
    _title = title;
    _body = body;
    _attatchmentPath = attatchmentPath;
    _creationDate = creationDate;
    _modificationDate = modificationDate;
    _createdBy = createdBy;
    _modifiedBy = modifiedBy;
    _medicalComplaintResponses = medicalComplaintResponses;
    _publicComplaintResponses = publicComplaintResponses;
  }

  ComplaintDetails.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
    _attatchmentPath = json['attatchmentPath'];
    _creationDate = json['creationDate'];
    _modificationDate = json['modificationDate'];
    _createdBy = json['createdBy'];
    _modifiedBy = json['modifiedBy'];
    if (json['medicalComplaintResponses'] != null) {
      _medicalComplaintResponses = [];
      json['medicalComplaintResponses'].forEach((v) {
        _medicalComplaintResponses?.add(MedicalComplaintResponses.fromJson(v));
      });
    }
    if (json['publicComplaintResponses'] != null) {
      _publicComplaintResponses = [];
      json['publicComplaintResponses'].forEach((v) {
        _publicComplaintResponses?.add(MedicalComplaintResponses.fromJson(v));
      });
    }
  }

  num? _id;
  String? _title;
  String? _body;
  String? _attatchmentPath;
  String? _creationDate;
  String? _modificationDate;
  String? _createdBy;
  String? _modifiedBy;
  List<MedicalComplaintResponses>? _medicalComplaintResponses;
  List<MedicalComplaintResponses>? _publicComplaintResponses;

  num? get id => _id;

  String? get title => _title;

  String? get body => _body;

  String? get attatchmentPath => _attatchmentPath;

  String? get creationDate => _creationDate;

  String? get modificationDate => _modificationDate;

  String? get createdBy => _createdBy;

  String? get modifiedBy => _modifiedBy;

  List<MedicalComplaintResponses>? get medicalComplaintResponses =>
      _medicalComplaintResponses;

  List<MedicalComplaintResponses>? get publicComplaintResponses =>
      _publicComplaintResponses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body'] = _body;
    map['attatchmentPath'] = _attatchmentPath;
    map['creationDate'] = _creationDate;
    map['modificationDate'] = _modificationDate;
    map['createdBy'] = _createdBy;
    map['modifiedBy'] = _modifiedBy;
    if (_medicalComplaintResponses != null) {
      map['medicalComplaintResponses'] =
          _medicalComplaintResponses?.map((v) => v.toJson()).toList();
    }
    if (_publicComplaintResponses != null) {
      map['publicComplaintResponses'] =
          _publicComplaintResponses?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

MedicalComplaintResponses medicalComplaintResponsesFromJson(String str) =>
    MedicalComplaintResponses.fromJson(json.decode(str));

String medicalComplaintResponsesToJson(MedicalComplaintResponses data) =>
    json.encode(data.toJson());

class MedicalComplaintResponses {
  MedicalComplaintResponses({
    num? id,
    String? title,
    String? body,
    String? attachmentPath,
    num? complaintId,
    String? creationDate,
    String? modificationDate,
    String? createdBy,
    String? modifiedBy,
    bool? byAdmin,
  }) {
    _id = id;
    _title = title;
    _body = body;
    _attachmentPath = attachmentPath;
    _complaintId = complaintId;
    _creationDate = creationDate;
    _modificationDate = modificationDate;
    _createdBy = createdBy;
    _modifiedBy = modifiedBy;
    _byAdmin = byAdmin;
  }

  MedicalComplaintResponses.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
    _attachmentPath = json['attachmentPath'];
    _complaintId = json['complaintId'];
    _creationDate = json['creationDate'];
    _modificationDate = json['modificationDate'];
    _createdBy = json['createdBy'];
    _modifiedBy = json['modifiedBy'];
    _byAdmin = json['byAdmin'];
  }

  num? _id;
  String? _title;
  String? _body;
  String? _attachmentPath;
  num? _complaintId;
  String? _creationDate;
  String? _modificationDate;
  String? _createdBy;
  String? _modifiedBy;
  bool? _byAdmin;

  num? get id => _id;

  String? get title => _title;

  String? get body => _body;

  String? get attachmentPath => _attachmentPath;

  num? get complaintId => _complaintId;

  String? get creationDate => _creationDate;

  String? get modificationDate => _modificationDate;

  String? get createdBy => _createdBy;

  String? get modifiedBy => _modifiedBy;

  bool? get byAdmin => _byAdmin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body'] = _body;
    map['attachmentPath'] = _attachmentPath;
    map['complaintId'] = _complaintId;
    map['creationDate'] = _creationDate;
    map['modificationDate'] = _modificationDate;
    map['createdBy'] = _createdBy;
    map['modifiedBy'] = _modifiedBy;
    map['byAdmin'] = _byAdmin;
    return map;
  }
}
