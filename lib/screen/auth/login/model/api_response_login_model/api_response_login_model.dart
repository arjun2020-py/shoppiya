import 'package:json_annotation/json_annotation.dart';

part 'api_response_login_model.g.dart';

@JsonSerializable()
class ApiResponseLoginModel {
  String? token;

  ApiResponseLoginModel({this.token});

  factory ApiResponseLoginModel.fromJson(Map<String, dynamic> json) {
    return _$ApiResponseLoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiResponseLoginModelToJson(this);
}
