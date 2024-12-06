import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../../login/ui/widgets/terms_and_conditions_widget.dart';
import 'widgets /sign_up_form.dart';
import 'widgets /login_text_button.dart';
import 'widgets%20/sign_up_bloc_listener.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SignupBlocListener(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: AppTextStyles.font24BlueBold,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Sign up now and start exploring all that our app has to offer."
                    " We're excited to welcome you to our community!",
                    style: AppTextStyles.font13Grey,
                  ),
                  const SignupForm(),
                  SizedBox(height: 20.h),
                  const TermsAndConditionsWidget(),
                  SizedBox(height: 20.h),
                  const LoginTextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
