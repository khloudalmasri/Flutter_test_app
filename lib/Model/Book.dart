class Book {
  List<Data> _data;
  Links _links;
  Meta _meta;
  bool _success;
  int _status;

  Book({List<Data> data, Links links, Meta meta, bool success, int status}) {
    this._data = data;
    this._links = links;
    this._meta = meta;
    this._success = success;
    this._status = status;
  }

  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;
  Links get links => _links;
  set links(Links links) => _links = links;
  Meta get meta => _meta;
  set meta(Meta meta) => _meta = meta;
  bool get success => _success;
  set success(bool success) => _success = success;
  int get status => _status;
  set status(int status) => _status = status;

  Book.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
    _links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    _meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    _success = json['success'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    if (this._links != null) {
      data['links'] = this._links.toJson();
    }
    if (this._meta != null) {
      data['meta'] = this._meta.toJson();
    }
    data['success'] = this._success;
    data['status'] = this._status;
    return data;
  }
}

class Data {
  int _id;
  String _slug;
  String _title;
  String _description;
  String _icon;
  String _link;

  Data(
      {int id,
      String slug,
      String title,
      String description,
      String icon,
      String link}) {
    this._id = id;
    this._slug = slug;
    this._title = title;
    this._description = description;
    this._icon = icon;
    this._link = link;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get slug => _slug;
  set slug(String slug) => _slug = slug;
  String get title => _title;
  set title(String title) => _title = title;
  String get description => _description;
  set description(String description) => _description = description;
  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get link => _link;
  set link(String link) => _link = link;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _slug = json['slug'];
    _title = json['title'];
    _description = json['description'];
    _icon = json['icon'];
    _link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['slug'] = this._slug;
    data['title'] = this._title;
    data['description'] = this._description;
    data['icon'] = this._icon;
    data['link'] = this._link;
    return data;
  }
}

class Links {
  String _first;
  String _last;
  Null _prev;
  Null _next;

  Links({String first, String last, Null prev, Null next}) {
    this._first = first;
    this._last = last;
    this._prev = prev;
    this._next = next;
  }

  String get first => _first;
  set first(String first) => _first = first;
  String get last => _last;
  set last(String last) => _last = last;
  Null get prev => _prev;
  set prev(Null prev) => _prev = prev;
  Null get next => _next;
  set next(Null next) => _next = next;

  Links.fromJson(Map<String, dynamic> json) {
    _first = json['first'];
    _last = json['last'];
    _prev = json['prev'];
    _next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this._first;
    data['last'] = this._last;
    data['prev'] = this._prev;
    data['next'] = this._next;
    return data;
  }
}

class Meta {
  int _currentPage;
  int _from;
  int _lastPage;
  String _path;
  int _perPage;
  int _to;
  int _total;

  Meta(
      {int currentPage,
      int from,
      int lastPage,
      String path,
      int perPage,
      int to,
      int total}) {
    this._currentPage = currentPage;
    this._from = from;
    this._lastPage = lastPage;
    this._path = path;
    this._perPage = perPage;
    this._to = to;
    this._total = total;
  }

  int get currentPage => _currentPage;
  set currentPage(int currentPage) => _currentPage = currentPage;
  int get from => _from;
  set from(int from) => _from = from;
  int get lastPage => _lastPage;
  set lastPage(int lastPage) => _lastPage = lastPage;
  String get path => _path;
  set path(String path) => _path = path;
  int get perPage => _perPage;
  set perPage(int perPage) => _perPage = perPage;
  int get to => _to;
  set to(int to) => _to = to;
  int get total => _total;
  set total(int total) => _total = total;

  Meta.fromJson(Map<String, dynamic> json) {
    _currentPage = json['current_page'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _path = json['path'];
    _perPage = json['per_page'];
    _to = json['to'];
    _total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this._currentPage;
    data['from'] = this._from;
    data['last_page'] = this._lastPage;
    data['path'] = this._path;
    data['per_page'] = this._perPage;
    data['to'] = this._to;
    data['total'] = this._total;
    return data;
  }
}
