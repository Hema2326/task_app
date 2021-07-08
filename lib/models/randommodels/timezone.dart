class Timezone {
  String offset;
  String description;

  Timezone({this.offset, this.description});

  factory Timezone.fromJson(Map<String, dynamic> json) {
    return Timezone(
      offset: json['offset'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'description': description,
    };
  }
}
