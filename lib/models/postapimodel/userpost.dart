class Userpost {
  String id;
  String name;
  String job;

  Userpost({this.id, this.name, this.job});

  factory Userpost.fromJson(Map<String, dynamic> json) {
    return Userpost(
        id: json['id'] as String,
        name: json['name'] as String,
        job: json['job'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'job': job,
    };
  }
}
