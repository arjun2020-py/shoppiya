// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_requst_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRequstUserModel _$ApiRequstUserModelFromJson(Map<String, dynamic> json) =>
    ApiRequstUserModel(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$ApiRequstUserModelToJson(ApiRequstUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
    };
