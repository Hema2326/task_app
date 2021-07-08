class Registered {
  String date;
  int age;

  Registered({this.date, this.age});

  factory Registered.fromJson(Map<String, dynamic> json) {
    return Registered(
      date: json['date'] as String,
      age: json['age'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'age': age,
    };
  }
}
