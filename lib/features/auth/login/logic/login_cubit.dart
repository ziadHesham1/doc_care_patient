import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doc_care_core/core/helpers/shared_pref/shared_pref_helper.dart';
import 'package:doc_care_core/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:doc_care_core/core/networking/api_result.dart';
import 'package:doc_care_core/core/networking/dio_factory.dart';
import '../data/models/login_request_body.dart';
import '../data/models/login_response.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginState.initial());
  final TextEditingController emailController =
      TextEditingController(text: 'ziad@mail.com');
  final TextEditingController passwordController =
      TextEditingController(text: 'Ziad@1111');
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(const LoginState.loading());
    final ApiResult<LoginResponse> response = await _loginRepository.login(
        LoginRequestBody(
            email: emailController.text, password: passwordController.text));
    response.when(
      success: (LoginResponse data) {
        SharedPrefHelper.setSecuredString(
            SharedPrefKeys.accessToken, data.loginResponse.token);
        DioFactory.updateDioHeadersToken(data.loginResponse.token);
        emit(LoginState.success(data));
      },
      failure: (error) => emit(
        LoginState.error(error: error),
      ),
    );
  }
}
