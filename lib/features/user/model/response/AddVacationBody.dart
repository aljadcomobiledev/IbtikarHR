class AddVacationBody {
  AddVacationBody({
      this.employeeId, 
      this.vacType, 
      this.vacstartDate, 
      this.vacDuration, 
      this.vacEndDate, 
      this.empReplaceId, 
      this.docSupport, 
      this.notes, 
      this.status,});

  AddVacationBody.fromJson(dynamic json) {
    employeeId = json['employeeId'];
    vacType = json['vacType'];
    vacstartDate = json['vacstartDate'];
    vacDuration = json['vacDuration'];
    vacEndDate = json['vacEndDate'];
    empReplaceId = json['empReplaceId'];
    docSupport = json['docSupport'];
    notes = json['notes'];
    status = json['status'];
  }
  int? employeeId;
  int? vacType;
  String? vacstartDate;
  int? vacDuration;
  String? vacEndDate;
  int? empReplaceId;
  String? docSupport;
  String? notes;
  int? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['employeeId'] = employeeId;
    map['vacType'] = vacType;
    map['vacstartDate'] = vacstartDate;
    map['vacDuration'] = vacDuration;
    map['vacEndDate'] = vacEndDate;
    map['empReplaceId'] = empReplaceId;
    map['docSupport'] = docSupport;
    map['notes'] = notes;
    map['status'] = status;
    return map;
  }

}