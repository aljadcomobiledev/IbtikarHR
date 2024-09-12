class LoginBody {
  LoginBody({
     this.userName,
     this.password,
     this.branchId,
     this.companyId,
     this.rememberMe,
  });

  LoginBody.fromJson(dynamic json) {
    userName = json['userName'];
    password = json['password'];
    branchId = json['branchId'];
    companyId = json['companyId'];
    rememberMe = json['rememberMe'];
  }

  String? userName;
  String? password;
  int? branchId;
  int? companyId;
  bool? rememberMe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = userName;
    map['password'] = password;
    map['branchId'] = branchId;
    map['companyId'] = companyId;
    map['rememberMe'] = rememberMe;
    return map;
  }
}
