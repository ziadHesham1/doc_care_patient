import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_extensions.dart';
import 'package:doc_care_core/core/routing/routes.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'package:doc_care_core/core/widgets/buttons/app_elevated_button.dart';
import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments'
                        ' easily with Docdoc to get a new experience.',
                        style: AppTextStyles.font13Grey,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      AppElevatedButton(
                        onPressed: () {
                          context.pushReplacementNamed(Routes.loginScreen);
                        },
                        label: 'Get Started',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
