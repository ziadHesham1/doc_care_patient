import 'package:doc_care_core/core/di/service_locator.dart';
import 'package:doc_care_core/core/helpers/app_extensions.dart';
import 'package:doc_care_core/core/helpers/shared_pref/shared_pref_helper.dart';
import 'package:doc_care_core/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:doc_care_core/fcm_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/patient_constants.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  await PatientDependencyInjection().registerSingleton();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  ServiceLocator.init(GetIt.instance);

  // await getIt<MessagingService>().init();
  // await FirebaseMessaging.instance.subscribeToTopic('topic1');

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.accessToken);
  if (!userToken!.isNullOrEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
