import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/widgets/fields/app_text_form_field.dart';
import '../../logic/login_cubit.dart';
import '../password_validation_status.dart';
import 'password_validations.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  late TextEditingController passwordController;
  bool isObscure = true;
  PasswordValidationStatus passwordValidationStatus =
      const PasswordValidationStatus();
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    passwordControllerListener();
  }

  void passwordControllerListener() {
    passwordController.addListener(
      () {
        setState(() {
          passwordValidationStatus = passwordValidationStatus
              .updateValidationStatus(passwordController.text);
        });
      },
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Password',
          controller: context.read<LoginCubit>().passwordController,
          suffixIcon: IconButton(
            style: IconButton.styleFrom(
              foregroundColor: AppColors.primary,
            ),
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          isObscureText: isObscure,
          validator: passwordValidator,
        ),
        PasswordValidationsWidget(
          passwordValidations: passwordValidationStatus,
        ),
        // SizedBox(height: 10.h),
      ],
    );
  }

  String? passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    if (passwordValidationStatus.notValidated()) {
      return 'Please enter valid password';
    }

    return null;
  }
}
