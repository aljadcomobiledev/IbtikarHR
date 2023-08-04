class SignUpBody {
  SignUpBody({
      this.username,
      this.firstName, 
      this.lastName, 
      this.mobileNumber, 
      this.nationalId, 
      this.birthDate,
      this.jobTitle,
      this.email,
      this.password,});

  SignUpBody.fromJson(dynamic json) {
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    mobileNumber = json['mobileNumber'];
    nationalId = json['nationalId'];
    birthDate = json['birthDate'];
    jobTitle = json['jobTitle'];
    email = json['email'];
    password = json['password'];
  }
  String? username;
  String? firstName;
  String? lastName;
  String? mobileNumber;
  String? nationalId;
  String? birthDate;
  String? jobTitle;
  String? email;
  String? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['mobileNumber'] = mobileNumber;
    map['nationalId'] = nationalId;
    map['birthDate'] = birthDate;
    map['jobTitle'] = jobTitle;
    map['email'] = email;
    map['password'] = password;
    return map;
  }

}