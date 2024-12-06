import 'package:dio/dio.dart';
import 'package:doc_care_patient/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/login/data/models/login_request_body.dart';
import '../../features/auth/login/data/models/login_response.dart';
import '../../features/auth/sign_up/data/models/sign_up_request_body.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstants.signup)
  Future<LoginResponse> signup(@Body() SignUpRequestBody signUpRequestBody);
}
