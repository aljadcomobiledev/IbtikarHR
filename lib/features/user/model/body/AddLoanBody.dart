import 'dart:convert';
AddLoanBody addLoanBodyFromJson(String str) => AddLoanBody.fromJson(json.decode(str));
String addLoanBodyToJson(AddLoanBody data) => json.encode(data.toJson());
class AddLoanBody {
  AddLoanBody({
      num? branchId, 
      num? debtId, 
      num? debts, 
      num? employeeId, 
      String? endInstallment, 
      String? installmentCount, 
      num? installmentValue, 
      num? jobId, 
      num? lastInstallmentValue, 
      String? notes, 
      String? startInstallment, 
      String? totaloan,}){
    _branchId = branchId;
    _debtId = debtId;
    _debts = debts;
    _employeeId = employeeId;
    _endInstallment = endInstallment;
    _installmentCount = installmentCount;
    _installmentValue = installmentValue;
    _jobId = jobId;
    _lastInstallmentValue = lastInstallmentValue;
    _notes = notes;
    _startInstallment = startInstallment;
    _totaloan = totaloan;
}

  AddLoanBody.fromJson(dynamic json) {
    _branchId = json['branchId'];
    _debtId = json['debtId'];
    _debts = json['debts'];
    _employeeId = json['employeeId'];
    _endInstallment = json['endInstallment'];
    _installmentCount = json['installmentCount'];
    _installmentValue = json['installmentValue'];
    _jobId = json['jobId'];
    _lastInstallmentValue = json['lastInstallmentValue'];
    _notes = json['notes'];
    _startInstallment = json['startInstallment'];
    _totaloan = json['totaloan'];
  }
  num? _branchId;
  num? _debtId;
  num? _debts;
  num? _employeeId;
  String? _endInstallment;
  String? _installmentCount;
  num? _installmentValue;
  num? _jobId;
  num? _lastInstallmentValue;
  String? _notes;
  String? _startInstallment;
  String? _totaloan;

  num? get branchId => _branchId;
  num? get debtId => _debtId;
  num? get debts => _debts;
  num? get employeeId => _employeeId;
  String? get endInstallment => _endInstallment;
  String? get installmentCount => _installmentCount;
  num? get installmentValue => _installmentValue;
  num? get jobId => _jobId;
  num? get lastInstallmentValue => _lastInstallmentValue;
  String? get notes => _notes;
  String? get startInstallment => _startInstallment;
  String? get totaloan => _totaloan;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['branchId'] = _branchId;
    map['debtId'] = _debtId;
    map['debts'] = _debts;
    map['employeeId'] = _employeeId;
    map['endInstallment'] = _endInstallment;
    map['installmentCount'] = _installmentCount;
    map['installmentValue'] = _installmentValue;
    map['jobId'] = _jobId;
    map['lastInstallmentValue'] = _lastInstallmentValue;
    map['notes'] = _notes;
    map['startInstallment'] = _startInstallment;
    map['totaloan'] = _totaloan;
    return map;
  }

}