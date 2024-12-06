import 'package:doc_care_core/core/networking/api_error_handler.dart';
import 'package:doc_care_core/core/networking/api_result.dart';
import 'package:doc_care_patient/core/networking/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult<LoginResponse>.success(response);
    } catch (e) {
      return ApiResult<LoginResponse>.failure(ApiErrorHandler.handle(e));
    }
  }
}
