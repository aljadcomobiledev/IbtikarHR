import 'dart:convert';
VacationsResponse vacationsResponseFromJson(String str) => VacationsResponse.fromJson(json.decode(str));
String vacationsResponseToJson(VacationsResponse data) => json.encode(data.toJson());
class VacationsResponse {
  VacationsResponse({
      bool? isSuccess, 
      dynamic message, 
      Obj? obj,}){
    _isSuccess = isSuccess;
    _message = message;
    _obj = obj;
}

  VacationsResponse.fromJson(dynamic json) {
    _isSuccess = json['IsSuccess'];
    _message = json['Message'];
    _obj = json['Obj'] != null ? Obj.fromJson(json['Obj']) : null;
  }
  bool? _isSuccess;
  dynamic _message;
  Obj? _obj;

  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  Obj? get obj => _obj;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['IsSuccess'] = _isSuccess;
    map['Message'] = _message;
    if (_obj != null) {
      map['Obj'] = _obj?.toJson();
    }
    return map;
  }

}

Obj objFromJson(String str) => Obj.fromJson(json.decode(str));
String objToJson(Obj data) => json.encode(data.toJson());
class Obj {
  Obj({
      List<VacationRequests>? vacationRequests,}){
    _vacationRequests = vacationRequests;
}

  Obj.fromJson(dynamic json) {
    if (json['VacationRequests'] != null) {
      _vacationRequests = [];
      json['VacationRequests'].forEach((v) {
        _vacationRequests?.add(VacationRequests.fromJson(v));
      });
    }
  }
  List<VacationRequests>? _vacationRequests;

  List<VacationRequests>? get vacationRequests => _vacationRequests;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_vacationRequests != null) {
      map['VacationRequests'] = _vacationRequests?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

VacationRequests vacationRequestsFromJson(String str) => VacationRequests.fromJson(json.decode(str));
String vacationRequestsToJson(VacationRequests data) => json.encode(data.toJson());
class VacationRequests {
  VacationRequests({
      num? employeeId, 
      num? vacType, 
      String? vacstartDate, 
      num? vacDuration, 
      String? vacEndDate, 
      num? empReplaceId, 
      String? docSupport, 
      num? status, 
      num? id, 
      num? no, 
      String? guid, 
      dynamic nameAr, 
      dynamic nameEn, 
      num? branchId, 
      dynamic branchName, 
      num? companyId, 
      dynamic companyName, 
      String? docRefGuid, 
      bool? isActive, 
      String? createdDate, 
      String? createdBy, 
      bool? isUpdated, 
      dynamic lastUpdatedBy, 
      String? lastUpdatedDate, 
      num? updatedCount, 
      bool? isCanceled, 
      num? cancelById, 
      dynamic cancelBy, 
      String? notes, 
      String? cancelDate, 
      dynamic modifyById, 
      dynamic modifyByName, 
      String? lastModifiedDate, 
      num? modifyCount, 
      dynamic updateFlag,}){
    _employeeId = employeeId;
    _vacType = vacType;
    _vacstartDate = vacstartDate;
    _vacDuration = vacDuration;
    _vacEndDate = vacEndDate;
    _empReplaceId = empReplaceId;
    _docSupport = docSupport;
    _status = status;
    _id = id;
    _no = no;
    _guid = guid;
    _nameAr = nameAr;
    _nameEn = nameEn;
    _branchId = branchId;
    _branchName = branchName;
    _companyId = companyId;
    _companyName = companyName;
    _docRefGuid = docRefGuid;
    _isActive = isActive;
    _createdDate = createdDate;
    _createdBy = createdBy;
    _isUpdated = isUpdated;
    _lastUpdatedBy = lastUpdatedBy;
    _lastUpdatedDate = lastUpdatedDate;
    _updatedCount = updatedCount;
    _isCanceled = isCanceled;
    _cancelById = cancelById;
    _cancelBy = cancelBy;
    _notes = notes;
    _cancelDate = cancelDate;
    _modifyById = modifyById;
    _modifyByName = modifyByName;
    _lastModifiedDate = lastModifiedDate;
    _modifyCount = modifyCount;
    _updateFlag = updateFlag;
}

  VacationRequests.fromJson(dynamic json) {
    _employeeId = json['EmployeeId'];
    _vacType = json['VacType'];
    _vacstartDate = json['VacstartDate'];
    _vacDuration = json['vacDuration'];
    _vacEndDate = json['VacEndDate'];
    _empReplaceId = json['EmpReplaceId'];
    _docSupport = json['docSupport'];
    _status = json['Status'];
    _id = json['Id'];
    _no = json['No'];
    _guid = json['Guid'];
    _nameAr = json['NameAr'];
    _nameEn = json['NameEn'];
    _branchId = json['BranchId'];
    _branchName = json['BranchName'];
    _companyId = json['CompanyId'];
    _companyName = json['CompanyName'];
    _docRefGuid = json['DocRefGuid'];
    _isActive = json['IsActive'];
    _createdDate = json['CreatedDate'];
    _createdBy = json['CreatedBy'];
    _isUpdated = json['IsUpdated'];
    _lastUpdatedBy = json['LastUpdatedBy'];
    _lastUpdatedDate = json['LastUpdatedDate'];
    _updatedCount = json['UpdatedCount'];
    _isCanceled = json['IsCanceled'];
    _cancelById = json['CancelById'];
    _cancelBy = json['CancelBy'];
    _notes = json['Notes'];
    _cancelDate = json['CancelDate'];
    _modifyById = json['ModifyById'];
    _modifyByName = json['ModifyByName'];
    _lastModifiedDate = json['LastModifiedDate'];
    _modifyCount = json['ModifyCount'];
    _updateFlag = json['updateFlag'];
  }
  num? _employeeId;
  num? _vacType;
  String? _vacstartDate;
  num? _vacDuration;
  String? _vacEndDate;
  num? _empReplaceId;
  String? _docSupport;
  num? _status;
  num? _id;
  num? _no;
  String? _guid;
  dynamic _nameAr;
  dynamic _nameEn;
  num? _branchId;
  dynamic _branchName;
  num? _companyId;
  dynamic _companyName;
  String? _docRefGuid;
  bool? _isActive;
  String? _createdDate;
  String? _createdBy;
  bool? _isUpdated;
  dynamic _lastUpdatedBy;
  String? _lastUpdatedDate;
  num? _updatedCount;
  bool? _isCanceled;
  num? _cancelById;
  dynamic _cancelBy;
  String? _notes;
  String? _cancelDate;
  dynamic _modifyById;
  dynamic _modifyByName;
  String? _lastModifiedDate;
  num? _modifyCount;
  dynamic _updateFlag;

  num? get employeeId => _employeeId;
  num? get vacType => _vacType;
  String? get vacstartDate => _vacstartDate;
  num? get vacDuration => _vacDuration;
  String? get vacEndDate => _vacEndDate;
  num? get empReplaceId => _empReplaceId;
  String? get docSupport => _docSupport;
  num? get status => _status;
  num? get id => _id;
  num? get no => _no;
  String? get guid => _guid;
  dynamic get nameAr => _nameAr;
  dynamic get nameEn => _nameEn;
  num? get branchId => _branchId;
  dynamic get branchName => _branchName;
  num? get companyId => _companyId;
  dynamic get companyName => _companyName;
  String? get docRefGuid => _docRefGuid;
  bool? get isActive => _isActive;
  String? get createdDate => _createdDate;
  String? get createdBy => _createdBy;
  bool? get isUpdated => _isUpdated;
  dynamic get lastUpdatedBy => _lastUpdatedBy;
  String? get lastUpdatedDate => _lastUpdatedDate;
  num? get updatedCount => _updatedCount;
  bool? get isCanceled => _isCanceled;
  num? get cancelById => _cancelById;
  dynamic get cancelBy => _cancelBy;
  String? get notes => _notes;
  String? get cancelDate => _cancelDate;
  dynamic get modifyById => _modifyById;
  dynamic get modifyByName => _modifyByName;
  String? get lastModifiedDate => _lastModifiedDate;
  num? get modifyCount => _modifyCount;
  dynamic get updateFlag => _updateFlag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['EmployeeId'] = _employeeId;
    map['VacType'] = _vacType;
    map['VacstartDate'] = _vacstartDate;
    map['vacDuration'] = _vacDuration;
    map['VacEndDate'] = _vacEndDate;
    map['EmpReplaceId'] = _empReplaceId;
    map['docSupport'] = _docSupport;
    map['Status'] = _status;
    map['Id'] = _id;
    map['No'] = _no;
    map['Guid'] = _guid;
    map['NameAr'] = _nameAr;
    map['NameEn'] = _nameEn;
    map['BranchId'] = _branchId;
    map['BranchName'] = _branchName;
    map['CompanyId'] = _companyId;
    map['CompanyName'] = _companyName;
    map['DocRefGuid'] = _docRefGuid;
    map['IsActive'] = _isActive;
    map['CreatedDate'] = _createdDate;
    map['CreatedBy'] = _createdBy;
    map['IsUpdated'] = _isUpdated;
    map['LastUpdatedBy'] = _lastUpdatedBy;
    map['LastUpdatedDate'] = _lastUpdatedDate;
    map['UpdatedCount'] = _updatedCount;
    map['IsCanceled'] = _isCanceled;
    map['CancelById'] = _cancelById;
    map['CancelBy'] = _cancelBy;
    map['Notes'] = _notes;
    map['CancelDate'] = _cancelDate;
    map['ModifyById'] = _modifyById;
    map['ModifyByName'] = _modifyByName;
    map['LastModifiedDate'] = _lastModifiedDate;
    map['ModifyCount'] = _modifyCount;
    map['updateFlag'] = _updateFlag;
    return map;
  }

}