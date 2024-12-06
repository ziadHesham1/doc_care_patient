import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(height: 1.5),
          children: [
            TextSpan(
              text: 'By logging, you agree to our ',
              style: AppTextStyles.font12lighterGrey,
            ),
            TextSpan(
              text: 'Terms & Conditions',
              style: AppTextStyles.font12darkBlueSemiBold,
            ),
            TextSpan(
              text: ' and',
              style: AppTextStyles.font12lighterGrey,
            ),
            TextSpan(
              text: ' Privacy Policy',
              style: AppTextStyles.font12darkBlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
