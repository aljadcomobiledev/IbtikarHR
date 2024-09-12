class BranchResponse {
  BranchResponse({
      this.id,
      this.no,
      this.guid, 
      this.nameAr, 
      this.nameEn, 
      this.branchId, 
      this.branchName, 
      this.companyId, 
      this.companyName, 
      this.docRefGuid, 
      this.isActive,});

  BranchResponse.fromJson(dynamic json) {
    id = json['Id'];
    no = json['No'];
    guid = json['Guid'];
    nameAr = json['NameAr'];
    nameEn = json['NameEn'];
    branchId = json['BranchId'];
    branchName = json['BranchName'];
    companyId = json['CompanyId'];
    companyName = json['CompanyName'];
    docRefGuid = json['DocRefGuid'];
    isActive = json['IsActive'];
  }
  int? id;
  int? no;
  String? guid;
  String? nameAr;
  String? nameEn;
  int? branchId;
  String? branchName;
  int? companyId;
  String? companyName;
  String? docRefGuid;
  bool? isActive;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['No'] = no;
    map['Guid'] = guid;
    map['NameAr'] = nameAr;
    map['NameEn'] = nameEn;
    map['BranchId'] = branchId;
    map['BranchName'] = branchName;
    map['CompanyId'] = companyId;
    map['CompanyName'] = companyName;
    map['DocRefGuid'] = docRefGuid;
    map['IsActive'] = isActive;
    return map;
  }

}