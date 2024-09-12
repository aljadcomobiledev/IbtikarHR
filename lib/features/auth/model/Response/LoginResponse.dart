import 'dart:convert';
LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      bool? isSuccess, 
      String? message, 
      Obj? obj,}){
    _isSuccess = isSuccess;
    _message = message;
    _obj = obj;
}

  LoginResponse.fromJson(dynamic json) {
    _isSuccess = json['IsSuccess'];
    _message = json['Message'];
    _obj = json['Obj'] != null ? Obj.fromJson(json['Obj']) : null;
  }
  bool? _isSuccess;
  String? _message;
  Obj? _obj;

  bool? get isSuccess => _isSuccess;
  String? get message => _message;
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
      String? userName, 
      dynamic password, 
      String? email, 
      dynamic nameAr, 
      dynamic phoneNumber, 
      num? roleId, 
      String? roleName, 
      bool? allowToGiveDiscount,
      bool? allowToChangePrice, 
      num? employeeId, 
      String? accessToken,}){
    _userName = userName;
    _password = password;
    _email = email;
    _nameAr = nameAr;
    _phoneNumber = phoneNumber;
    _roleId = roleId;
    _roleName = roleName;
    _allowToGiveDiscount = allowToGiveDiscount;
    _allowToChangePrice = allowToChangePrice;
    _employeeId = employeeId;
    _accessToken = accessToken;
}

  Obj.fromJson(dynamic json) {
    _userName = json['UserName'];
    _password = json['Password'];
    _email = json['Email'];
    _nameAr = json['NameAr'];
    _phoneNumber = json['PhoneNumber'];
    _roleId = json['RoleId'];
    _roleName = json['RoleName'];
    _allowToGiveDiscount = json['AllowToGiveDiscount'];
    _allowToChangePrice = json['AllowToChangePrice'];
    _employeeId = json['EmployeeId'];
    _accessToken = json['AccessToken'];
  }
  String? _userName;
  dynamic _password;
  String? _email;
  dynamic _nameAr;
  dynamic _phoneNumber;
  num? _roleId;
  String? _roleName;
  bool? _allowToGiveDiscount;
  bool? _allowToChangePrice;
  num? _employeeId;
  String? _accessToken;

  String? get userName => _userName;
  dynamic get password => _password;
  String? get email => _email;
  dynamic get nameAr => _nameAr;
  dynamic get phoneNumber => _phoneNumber;
  num? get roleId => _roleId;
  String? get roleName => _roleName;
  bool? get allowToGiveDiscount => _allowToGiveDiscount;
  bool? get allowToChangePrice => _allowToChangePrice;
  num? get employeeId => _employeeId;
  String? get accessToken => _accessToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserName'] = _userName;
    map['Password'] = _password;
    map['Email'] = _email;
    map['NameAr'] = _nameAr;
    map['PhoneNumber'] = _phoneNumber;
    map['RoleId'] = _roleId;
    map['RoleName'] = _roleName;

    map['AllowToGiveDiscount'] = _allowToGiveDiscount;
    map['AllowToChangePrice'] = _allowToChangePrice;
    map['EmployeeId'] = _employeeId;
    map['AccessToken'] = _accessToken;
    return map;
  }

}


