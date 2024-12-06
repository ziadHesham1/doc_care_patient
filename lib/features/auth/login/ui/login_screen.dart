import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'widgets/login_bloc_listener.dart';
import 'widgets/login_form.dart';
import 'widgets/signup_text_button.dart';
import 'widgets/terms_and_conditions_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoginBlocListener(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: AppTextStyles.font24BlueBold,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "We're excited to have you back, "
                    "can't wait to see what you've been up to since you last logged in.",
                    style: AppTextStyles.font13Grey,
                  ),
                  const LoginForm(),
                  SizedBox(height: 20.h),
                  const TermsAndConditionsWidget(),
                  SizedBox(height: 20.h),
                  const SignupTextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
