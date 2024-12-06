import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:doc_care_patient/core/networking/api_constants.dart';
import '../models/specialization_model.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
  // @GET(ApiConstants.doctors)
  // Future<dynamic> getDoctors();
  @GET(ApiConstants.specializations)
  Future<Specializations> getSpecializations();
}
