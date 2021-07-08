import 'info.dart';
import 'results.dart';

class Randomuser {
  List<Results> results;
  Info info;

  Randomuser({this.results, this.info});

  factory Randomuser.fromJson(Map<String, dynamic> json) {
    return Randomuser(
      results: (json['results'] as List<dynamic>)
          ?.map((e) =>
              e == null ? null : Results.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results?.map((e) => e?.toJson())?.toList(),
      'info': info?.toJson(),
    };
  }
}
