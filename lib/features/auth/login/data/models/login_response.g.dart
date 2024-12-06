// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String,
      loginResponse:
          LoginUserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.loginResponse,
      'status': instance.status,
      'code': instance.code,
    };

LoginUserData _$LoginUserDataFromJson(Map<String, dynamic> json) =>
    LoginUserData(
      token: json['token'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$LoginUserDataToJson(LoginUserData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
    };
