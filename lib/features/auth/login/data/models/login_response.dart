import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String message;
  @JsonKey(name: 'data')
  final LoginUserData loginResponse;
  final bool status;
  final int code;

  LoginResponse({
    required this.message,
    required this.loginResponse,
    required this.status,
    required this.code,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class LoginUserData {
  final String token;
  final String username;

  LoginUserData({required this.token, required this.username});

  factory LoginUserData.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDataFromJson(json);
}
