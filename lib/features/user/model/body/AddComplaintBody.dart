class AddComplaintBody {
  AddComplaintBody({
     this.title,
     this.body,
     this.attatchmentBase64,
  });

  AddComplaintBody.fromJson(dynamic json) {
    title = json['title'];
    body = json['body'];
    attatchmentBase64 = json['attatchmentBase64'];
  }

  String? title;
  String? body;
  String? attatchmentBase64;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['body'] = body;
    map['attatchmentBase64'] = attatchmentBase64;
    return map;
  }
}
