import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'di.export.dart';

/// Instance of Get It
final GetIt getIt = GetIt.instance;

class PatientDependencyInjection {
  static final PatientDependencyInjection _singleton =
      PatientDependencyInjection._();

  factory PatientDependencyInjection() => _singleton;

  PatientDependencyInjection._();

  Future<void> registerSingleton() async {
    Dio dio = await DioFactory.getDio();

    getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

    // login repo & cubit
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
    getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

    // signup repo & cubit
    getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
    getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
    // home
    getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
    getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

    getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
    // --> FCM <--
    ServiceLocator().sl.registerLazySingleton(() => PatientFcmService());
    ServiceLocator().sl.registerLazySingleton(() => MessagingService(
          fcmResources: ServiceLocator().sl<PatientFcmService>(),
        ));
  }
}
