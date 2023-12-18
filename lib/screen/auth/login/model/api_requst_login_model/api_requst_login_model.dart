import 'package:json_annotation/json_annotation.dart';

part 'api_requst_login_model.g.dart';

@JsonSerializable()
class ApiRequstLoginModel {
  String? username;
  String? password;

  ApiRequstLoginModel({this.username, this.password});
  ApiRequstLoginModel.login({required this.username, required this.password});

  factory ApiRequstLoginModel.fromJson(Map<String, dynamic> json) {
    return _$ApiRequstLoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiRequstLoginModelToJson(this);
}
