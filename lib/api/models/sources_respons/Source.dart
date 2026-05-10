class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  Source.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}