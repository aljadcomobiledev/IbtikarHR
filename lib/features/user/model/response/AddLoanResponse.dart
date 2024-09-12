class AddLoanResponse {
  AddLoanResponse({
      this.isSuccess, 
      this.message, 
      this.obj,});

  AddLoanResponse.fromJson(dynamic json) {
    isSuccess = json['IsSuccess'];
    message = json['Message'];
    obj = json['Obj'];
  }
  bool? isSuccess;
  String? message;
  dynamic obj;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['IsSuccess'] = isSuccess;
    map['Message'] = message;
    map['Obj'] = obj;
    return map;
  }

}