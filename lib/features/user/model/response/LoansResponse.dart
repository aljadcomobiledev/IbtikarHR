import 'dart:convert';
LoansResponse loansResponseFromJson(String str) => LoansResponse.fromJson(json.decode(str));
String loansResponseToJson(LoansResponse data) => json.encode(data.toJson());
class LoansResponse {
  LoansResponse({
      bool? isSuccess,
      dynamic message,
      Obj? obj,}){
    _isSuccess = isSuccess;
    _message = message;
    _obj = obj;
}

  LoansResponse.fromJson(dynamic json) {
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
      List<LoansModel>? loans,}){
    _loans = loans;
}

  Obj.fromJson(dynamic json) {
    if (json['Loans'] != null) {
      _loans = [];
      json['Loans'].forEach((v) {
        _loans?.add(LoansModel.fromJson(v));
      });
    }
  }
  List<LoansModel>? _loans;

  List<LoansModel>? get loans => _loans;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_loans != null) {
      map['Loans'] = _loans?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

LoansModel LoansModelFromJson(String str) => LoansModel.fromJson(json.decode(str));
String LoansModelToJson(LoansModel data) => json.encode(data.toJson());
class LoansModel {
  LoansModel({
      num? employeeId,
      num? jobId,
      num? debtId,
      num? currencyId,
      num? totaloan,
      String? startInstallment,
      num? installmentCount,
      String? endInstallment,
      num? installmentValue,
      num? lastInstallmentValue,
      num? debts,
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
      dynamic createById,
      dynamic createByName,
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
    _employeeId = employeeId;
    _jobId = jobId;
    _debtId = debtId;
    _currencyId = currencyId;
    _totaloan = totaloan;
    _startInstallment = startInstallment;
    _installmentCount = installmentCount;
    _endInstallment = endInstallment;
    _installmentValue = installmentValue;
    _lastInstallmentValue = lastInstallmentValue;
    _debts = debts;
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
    _createById = createById;
    _createByName = createByName;
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

  LoansModel.fromJson(dynamic json) {
    _employeeId = json['EmployeeId'];
    _jobId = json['JobId'];
    _debtId = json['DebtId'];
    _currencyId = json['CurrencyId'];
    _totaloan = json['Totaloan'];
    _startInstallment = json['StartInstallment'];
    _installmentCount = json['InstallmentCount'];
    _endInstallment = json['EndInstallment'];
    _installmentValue = json['InstallmentValue'];
    _lastInstallmentValue = json['LastInstallmentValue'];
    _debts = json['Debts'];
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
    _createById = json['CreateById'];
    _createByName = json['CreateByName'];
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
  num? _jobId;
  num? _debtId;
  num? _currencyId;
  num? _totaloan;
  String? _startInstallment;
  num? _installmentCount;
  String? _endInstallment;
  num? _installmentValue;
  num? _lastInstallmentValue;
  num? _debts;
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
  dynamic _createById;
  dynamic _createByName;
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

  num? get employeeId => _employeeId;
  num? get jobId => _jobId;
  num? get debtId => _debtId;
  num? get currencyId => _currencyId;
  num? get totaloan => _totaloan;
  String? get startInstallment => _startInstallment;
  num? get installmentCount => _installmentCount;
  String? get endInstallment => _endInstallment;
  num? get installmentValue => _installmentValue;
  num? get lastInstallmentValue => _lastInstallmentValue;
  num? get debts => _debts;
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
  dynamic get createById => _createById;
  dynamic get createByName => _createByName;
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
    map['EmployeeId'] = _employeeId;
    map['JobId'] = _jobId;
    map['DebtId'] = _debtId;
    map['CurrencyId'] = _currencyId;
    map['Totaloan'] = _totaloan;
    map['StartInstallment'] = _startInstallment;
    map['InstallmentCount'] = _installmentCount;
    map['EndInstallment'] = _endInstallment;
    map['InstallmentValue'] = _installmentValue;
    map['LastInstallmentValue'] = _lastInstallmentValue;
    map['Debts'] = _debts;
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
    map['CreateById'] = _createById;
    map['CreateByName'] = _createByName;
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