class ItemDetailsResponse {
  ItemDetailsResponse({
      this.id, 
      this.title, 
      this.body, 
      this.attatchmentPath,});

  ItemDetailsResponse.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    attatchmentPath = json['attatchmentPath'];
  }
  int? id;
  String? title;
  String? body;
  String? attatchmentPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    map['attatchmentPath'] = attatchmentPath;
    return map;
  }

}