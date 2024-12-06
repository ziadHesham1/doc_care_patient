import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_regex.dart';
import 'package:doc_care_core/core/widgets/buttons/app_elevated_button.dart';
import 'package:doc_care_core/core/widgets/fields/app_text_form_field.dart';
import '../../logic/signup_cubit.dart';
import '../widgets%20/phone_text_form_field.dart';
import 'password_text_form_field.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          SizedBox(height: 30.h),

          /// name field
          AppTextFormField(
            hintText: 'Name',
            controller: context.read<SignupCubit>().nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter name';
              }
              return null;
            },
          ),

          /// email field
          SizedBox(height: 16.h),
          AppTextFormField(
            hintText: 'Email',
            controller: context.read<SignupCubit>().emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
              if (!AppRegex.isEmailValid(value)) {
                return 'Please enter valid email';
              }
              return null;
            },
          ),

          ///phone number field

          SizedBox(height: 16.h),
          const PhoneTextFormField(),

          /// confirm password field
          SizedBox(height: 16.h),
          const PasswordTextFormField(hasConfirmPassword: true),

          SizedBox(height: 20.h),

          /// signup button
          AppElevatedButton(
            onPressed: () {
              if (context
                  .read<SignupCubit>()
                  .formKey
                  .currentState!
                  .validate()) {
                context.read<SignupCubit>().formKey.currentState!.save();
                context.read<SignupCubit>().signup();
              }
            },
            label: 'Create Account',
          ),
        ],
      ),
    );
  }
}
