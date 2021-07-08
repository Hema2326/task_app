import 'dob.dart';
import 'id.dart';
import 'location.dart';
import 'login.dart';
import 'name.dart';
import 'picture.dart';
import 'registered.dart';

class Results {
  String gender;
  Name name;
  Location location;
  String email;
  Login login;
  Dob dob;
  Registered registered;
  String phone;
  String cell;
  Id id;
  Picture picture;
  String nat;

  Results({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      gender: json['gender'] as String,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      email: json['email'] as String,
      login: json['login'] == null
          ? null
          : Login.fromJson(json['login'] as Map<String, dynamic>),
      dob: json['dob'] == null
          ? null
          : Dob.fromJson(json['dob'] as Map<String, dynamic>),
      registered: json['registered'] == null
          ? null
          : Registered.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      id: json['id'] == null
          ? null
          : Id.fromJson(json['id'] as Map<String, dynamic>),
      picture: json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gender': gender,
      'name': name?.toJson(),
      'location': location?.toJson(),
      'email': email,
      'login': login?.toJson(),
      'dob': dob?.toJson(),
      'registered': registered?.toJson(),
      'phone': phone,
      'cell': cell,
      'id': id?.toJson(),
      'picture': picture?.toJson(),
      'nat': nat,
    };
  }
}
