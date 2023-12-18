import 'package:json_annotation/json_annotation.dart';

import 'geolocation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String? city;
  String? street;
  int? number;
  String? zipcode;
  Geolocation? geolocation;

  Address({
    this.city,
    this.street,
    this.number,
    this.zipcode,
    this.geolocation,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
