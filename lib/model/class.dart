
class UpcomingClass {
  List<Content>? content;
  Pageable? pageable;
  int? totalPages;
  int? totalElements;
  bool? last;
  int? size;
  int? number;
  Sort? sort;
  int? numberOfElements;
  bool? first;
  bool? empty;

  UpcomingClass(
      {this.content,
        this.pageable,
        this.totalPages,
        this.totalElements,
        this.last,
        this.size,
        this.number,
        this.sort,
        this.numberOfElements,
        this.first,
        this.empty});

  UpcomingClass.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(new Content.fromJson(v));
      });
    }
    pageable = json['pageable'] != null
        ? new Pageable.fromJson(json['pageable'])
        : null;
    totalPages = json['totalPages'];
    totalElements = json['totalElements'];
    last = json['last'];
    size = json['size'];
    number = json['number'];
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    numberOfElements = json['numberOfElements'];
    first = json['first'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.content != null) {
      data['content'] = this.content!.map((v) => v.toJson()).toList();
    }
    if (this.pageable != null) {
      data['pageable'] = this.pageable!.toJson();
    }
    data['totalPages'] = this.totalPages;
    data['totalElements'] = this.totalElements;
    data['last'] = this.last;
    data['size'] = this.size;
    data['number'] = this.number;
    if (this.sort != null) {
      data['sort'] = this.sort!.toJson();
    }
    data['numberOfElements'] = this.numberOfElements;
    data['first'] = this.first;
    data['empty'] = this.empty;
    return data;
  }
}

class Content {
  int? id;
  String? className;
  String? classDescription;
  String? howToPrepare;
  String? classStartTime;
  String? classEndTime;
  List<String>? languageNames;
  List<String>? languageImages;
  List<String>? languageCategories;
  List<String>? languageCategoryImages;
  List<String>? languageLevels;
  int? filledSpots;
  int? totalSpots;
  int? hostId;
  String? hostName;

  Content(
      {this.id,
        this.className,
        this.classDescription,
        this.howToPrepare,
        this.classStartTime,
        this.classEndTime,
        this.languageNames,
        this.languageImages,
        this.languageCategories,
        this.languageCategoryImages,
        this.languageLevels,
        this.filledSpots,
        this.totalSpots,
        this.hostId,
        this.hostName});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    className = json['className'];
    classDescription = json['classDescription'];
    howToPrepare = json['howToPrepare'];
    classStartTime = json['classStartTime'];
    classEndTime = json['classEndTime'];
    languageNames = json['languageNames'].cast<String>();
    languageImages = json['languageImages'].cast<String>();
    languageCategories = json['languageCategories'].cast<String>();
    languageCategoryImages = json['languageCategoryImages'].cast<String>();
    languageLevels = json['languageLevels'].cast<String>();
    filledSpots = json['filledSpots'];
    totalSpots = json['totalSpots'];
    hostId = json['hostId'];
    hostName = json['hostName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['className'] = this.className;
    data['classDescription'] = this.classDescription;
    data['howToPrepare'] = this.howToPrepare;
    data['classStartTime'] = this.classStartTime;
    data['classEndTime'] = this.classEndTime;
    data['languageNames'] = this.languageNames;
    data['languageImages'] = this.languageImages;
    data['languageCategories'] = this.languageCategories;
    data['languageCategoryImages'] = this.languageCategoryImages;
    data['languageLevels'] = this.languageLevels;
    data['filledSpots'] = this.filledSpots;
    data['totalSpots'] = this.totalSpots;
    data['hostId'] = this.hostId;
    data['hostName'] = this.hostName;
    return data;
  }
}

class Pageable {
  Sort? sort;
  int? offset;
  int? pageNumber;
  int? pageSize;
  bool? paged;
  bool? unpaged;

  Pageable(
      {this.sort,
        this.offset,
        this.pageNumber,
        this.pageSize,
        this.paged,
        this.unpaged});

  Pageable.fromJson(Map<String, dynamic> json) {
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    offset = json['offset'];
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    paged = json['paged'];
    unpaged = json['unpaged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sort != null) {
      data['sort'] = this.sort!.toJson();
    }
    data['offset'] = this.offset;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['paged'] = this.paged;
    data['unpaged'] = this.unpaged;
    return data;
  }
}

class Sort {
  bool? empty;
  bool? sorted;
  bool? unsorted;

  Sort({this.empty, this.sorted, this.unsorted});

  Sort.fromJson(Map<String, dynamic> json) {
    empty = json['empty'];
    sorted = json['sorted'];
    unsorted = json['unsorted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['empty'] = this.empty;
    data['sorted'] = this.sorted;
    data['unsorted'] = this.unsorted;
    return data;
  }
}
