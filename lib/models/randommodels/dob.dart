class Dob {
  String date;
  int age;

  Dob({this.date, this.age});

  factory Dob.fromJson(Map<String, dynamic> json) {
    return Dob(
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
