import 'coordinates.dart';
import 'street.dart';
import 'timezone.dart';

class Location {
  Street street;
  String city;
  String state;
  String country;
  int postcode;
  Coordinates coordinates;
  Timezone timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      street: json['street'] == null
          ? null
          : Street.fromJson(json['street'] as Map<String, dynamic>),
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postcode: json['postcode'] as int,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      timezone: json['timezone'] == null
          ? null
          : Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street?.toJson(),
      'city': city,
      'state': state,
      'country': country,
      'postcode': postcode,
      'coordinates': coordinates?.toJson(),
      'timezone': timezone?.toJson(),
    };
  }
}
