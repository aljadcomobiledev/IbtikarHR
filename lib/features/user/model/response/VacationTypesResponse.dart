import 'dart:convert';
VacationTypesResponse vacationTypesResponseFromJson(String str) => VacationTypesResponse.fromJson(json.decode(str));
String vacationTypesResponseToJson(VacationTypesResponse data) => json.encode(data.toJson());
class VacationTypesResponse {
  VacationTypesResponse({
      bool? isSuccess, 
      dynamic message, 
      Obj? obj,}){
    _isSuccess = isSuccess;
    _message = message;
    _obj = obj;
}

  VacationTypesResponse.fromJson(dynamic json) {
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
      List<Vac>? vac,}){
    _vac = vac;
}

  Obj.fromJson(dynamic json) {
    if (json['vac'] != null) {
      _vac = [];
      json['vac'].forEach((v) {
        _vac?.add(Vac.fromJson(v));
      });
    }
  }
  List<Vac>? _vac;

  List<Vac>? get vac => _vac;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_vac != null) {
      map['vac'] = _vac?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Vac vacFromJson(String str) => Vac.fromJson(json.decode(str));
String vacToJson(Vac data) => json.encode(data.toJson());
class Vac {
  Vac({
      num? salaryDeduction, 
      num? maxVacDays, 
      num? vacRejectPeriod, 
      bool? isMustAlternative, 
      bool? isExtendOrCut, 
      bool? isDeportation, 
      num? statusId, 
      int? id,
      num? no, 
      String? guid, 
      String? nameAr, 
      String? nameEn, 
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
      dynamic notes, 
      String? cancelDate, 
      dynamic modifyById, 
      dynamic modifyByName, 
      String? lastModifiedDate, 
      num? modifyCount, 
      dynamic updateFlag,}){
    _salaryDeduction = salaryDeduction;
    _maxVacDays = maxVacDays;
    _vacRejectPeriod = vacRejectPeriod;
    _isMustAlternative = isMustAlternative;
    _isExtendOrCut = isExtendOrCut;
    _isDeportation = isDeportation;
    _statusId = statusId;
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

  Vac.fromJson(dynamic json) {
    _salaryDeduction = json['SalaryDeduction'];
    _maxVacDays = json['MaxVacDays'];
    _vacRejectPeriod = json['VacRejectPeriod'];
    _isMustAlternative = json['IsMustAlternative'];
    _isExtendOrCut = json['IsExtendOrCut'];
    _isDeportation = json['IsDeportation'];
    _statusId = json['StatusId'];
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
  num? _salaryDeduction;
  num? _maxVacDays;
  num? _vacRejectPeriod;
  bool? _isMustAlternative;
  bool? _isExtendOrCut;
  bool? _isDeportation;
  num? _statusId;
  int? _id;
  num? _no;
  String? _guid;
  String? _nameAr;
  String? _nameEn;
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
  dynamic _notes;
  String? _cancelDate;
  dynamic _modifyById;
  dynamic _modifyByName;
  String? _lastModifiedDate;
  num? _modifyCount;
  dynamic _updateFlag;

  num? get salaryDeduction => _salaryDeduction;
  num? get maxVacDays => _maxVacDays;
  num? get vacRejectPeriod => _vacRejectPeriod;
  bool? get isMustAlternative => _isMustAlternative;
  bool? get isExtendOrCut => _isExtendOrCut;
  bool? get isDeportation => _isDeportation;
  num? get statusId => _statusId;
  int? get id => _id;
  num? get no => _no;
  String? get guid => _guid;
  String? get nameAr => _nameAr;
  String? get nameEn => _nameEn;
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
  dynamic get notes => _notes;
  String? get cancelDate => _cancelDate;
  dynamic get modifyById => _modifyById;
  dynamic get modifyByName => _modifyByName;
  String? get lastModifiedDate => _lastModifiedDate;
  num? get modifyCount => _modifyCount;
  dynamic get updateFlag => _updateFlag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['SalaryDeduction'] = _salaryDeduction;
    map['MaxVacDays'] = _maxVacDays;
    map['VacRejectPeriod'] = _vacRejectPeriod;
    map['IsMustAlternative'] = _isMustAlternative;
    map['IsExtendOrCut'] = _isExtendOrCut;
    map['IsDeportation'] = _isDeportation;
    map['StatusId'] = _statusId;
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