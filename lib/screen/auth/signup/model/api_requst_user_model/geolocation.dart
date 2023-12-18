import 'package:json_annotation/json_annotation.dart';

part 'geolocation.g.dart';

@JsonSerializable()
class Geolocation {
  String? lat;
  String? long;

  Geolocation({this.lat, this.long});

  factory Geolocation.fromJson(Map<String, dynamic> json) {
    return _$GeolocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeolocationToJson(this);
}
