import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_regex.dart';
import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'package:doc_care_core/core/widgets/buttons/app_elevated_button.dart';
import 'package:doc_care_core/core/widgets/fields/app_text_form_field.dart';
import '../../logic/login_cubit.dart';
import 'password_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          SizedBox(height: 30.h),

          /// email field
          AppTextFormField(
            hintText: 'Email',
            controller: context.read<LoginCubit>().emailController,
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
          SizedBox(height: 16.h),

          /// password field
          const PasswordTextFormField(),

          /// remember me & forgot password row
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     AppCheckBox(
          //       label: 'Remember me',
          //       onChanged: (value) {},
          //     ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primary,
              ),
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.font12Primary,
              ),
            ),
          ),
          //   ],
          // ),
          SizedBox(height: 20.h),

          /// login button
          AppElevatedButton(
            onPressed: () {
              if (context.read<LoginCubit>().formKey.currentState!.validate()) {
                context.read<LoginCubit>().formKey.currentState!.save();
                context.read<LoginCubit>().login();
              }
            },
            label: 'Login',
          )
        ],
      ),
    );
  }
}
