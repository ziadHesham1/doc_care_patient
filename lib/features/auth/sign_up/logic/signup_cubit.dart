import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/sign_up_request_body.dart';
import '../data/repos/sign_up_repo.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepository;

  SignupCubit(this._signupRepository) : super(const SignupState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController =
      TextEditingController(text: 'ziad1@mail.com');
  final TextEditingController passwordController =
      TextEditingController(text: 'Ziad@11111');
  final TextEditingController passwordConfirmationController =
      TextEditingController(text: 'Ziad@11111');
  final TextEditingController nameController =
      TextEditingController(text: 'Ziad1');
  final TextEditingController phoneController =
      TextEditingController(text: '+20123456789');
  final TextEditingController genderController =
      TextEditingController(text: '0');

  signup() async {
    emit(const SignupState.loading());

    final result = await _signupRepository.signup(SignUpRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      gender: int.parse(genderController.text),
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
    ));
    result.when(
      success: (data) => emit(SignupState.success(data)),
      failure: (error) => emit(SignupState.error(error: error)),
    );
  }
}
