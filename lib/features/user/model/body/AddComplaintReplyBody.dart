class AddComplaintReplyBody {
  AddComplaintReplyBody({
     this.title,
     this.body,
     this.complaintId,
  });

  AddComplaintReplyBody.fromJson(dynamic json) {
    title = json['title'];
    body = json['body'];
    complaintId = json['complaintId'];
  }

  String? title;
  String? body;
  num? complaintId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['body'] = body;
    map['complaintId'] = complaintId;
    return map;
  }
}
