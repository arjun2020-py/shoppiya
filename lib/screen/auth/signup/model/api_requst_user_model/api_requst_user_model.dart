import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'name.dart';

part 'api_requst_user_model.g.dart';

@JsonSerializable()
class ApiRequstUserModel {
  String? email;
  String? username;
  String? password;
  Name? name;
  Address? address;
  String? phone;

  ApiRequstUserModel({
    this.email,
    this.username,
    this.password,
    this.name,
    this.address,
    this.phone,
  });

  factory ApiRequstUserModel.fromJson(Map<String, dynamic> json) {
    return _$ApiRequstUserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiRequstUserModelToJson(this);
}
