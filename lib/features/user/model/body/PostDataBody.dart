class PostDataBody {
  PostDataBody({
    this.PageIndex,
    this.PageSize,
    this.Search,
    this.Sort,
  });

  PostDataBody.fromJson(dynamic json) {
    PageIndex = json['PageIndex'];
    PageSize = json['PageSize'];
    Search = json['Search'];
    Sort = json['Sort'];
  }

  int? PageIndex;
  int? PageSize;
  String? Search;
  String? Sort;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PageIndex'] = PageIndex;
    map['PageSize'] = PageSize;
    map['Search'] = Search;
    map['Sort'] = Sort;
    return map;
  }
}