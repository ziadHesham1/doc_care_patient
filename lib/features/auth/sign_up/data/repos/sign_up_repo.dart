import 'package:doc_care_core/core/networking/api_error_handler.dart';
import 'package:doc_care_core/core/networking/api_result.dart';

import '../../../../../core/networking/api_service.dart';
import '../../../login/data/models/login_response.dart';
import '../models/sign_up_request_body.dart';

class SignupRepo {
  SignupRepo(this._apiService);
  final ApiService _apiService;
  Future<ApiResult<LoginResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      var response = await _apiService.signup(signUpRequestBody);
      return ApiResult<LoginResponse>.success(response);
    } catch (e) {
      return ApiResult<LoginResponse>.failure(ApiErrorHandler.handle(e));
    }
  }
}
