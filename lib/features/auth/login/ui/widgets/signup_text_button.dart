import 'package:doc_care_core/core/helpers/app_extensions.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:doc_care_core/core/routing/routes.dart';

class SignupTextButton extends StatelessWidget {
  const SignupTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pushReplacementNamed(Routes.signupScreen);
        },
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account? ',
                style: AppTextStyles.font12DarkBlue,
              ),
              TextSpan(
                text: 'Sign Up',
                style: AppTextStyles.font12PrimarySemiBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
