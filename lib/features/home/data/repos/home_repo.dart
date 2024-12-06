import 'package:doc_care_core/core/networking/api_error_handler.dart';
import 'package:doc_care_core/core/networking/api_result.dart';
import '../apis/home_api_service.dart';
import '../models/specialization_model.dart';

class HomeRepo {
  final HomeApiService homeApiService;
  HomeRepo(this.homeApiService);
  Future<ApiResult<Specializations>> getSpecializations() async {
    try {
      final response = await homeApiService.getSpecializations();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
