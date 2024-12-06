// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doc_care_patient/features/auth/login/ui/password_validation_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';

class PasswordValidationsWidget extends StatelessWidget {
  final PasswordValidationStatus passwordValidations;
  const PasswordValidationsWidget({
    super.key,
    required this.passwordValidations,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          validationItem(
              text: 'At least 1 lowercase letter',
              isValidated: passwordValidations.hasLowerCase),
          validationItem(
              text: 'At least 1 uppercase letter',
              isValidated: passwordValidations.hasUpperCase),
          validationItem(
              text: 'At least 1 special character',
              isValidated: passwordValidations.hasSpecialCharacter),
          validationItem(
              text: 'At least 1 number',
              isValidated: passwordValidations.hasNumber),
          validationItem(
              text: 'At least 8 characters long',
              isValidated: passwordValidations.hasMinLength),
        ],
      ),
    );
  }

  Widget validationItem({required String text, isValidated = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Row(
        children: [
          const CircleAvatar(radius: 3, backgroundColor: AppColors.darkBlue),
          const SizedBox(width: 10),
          Text(
            text,
            style: AppTextStyles.font13DarkBlue.copyWith(
              decoration: isValidated ? TextDecoration.lineThrough : null,
              decorationColor: isValidated ? Colors.green : null,
              color: isValidated ? Colors.green : AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
