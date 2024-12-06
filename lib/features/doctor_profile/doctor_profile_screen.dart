import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_extensions.dart';
import 'package:doc_care_core/core/routing/routes.dart';
import 'package:doc_care_core/core/widgets/buttons/app_elevated_button.dart';
import 'widgets/about_doctor_widget.dart';
import 'widgets/doctor_personal_data.dart';
import 'widgets/doctor_reviews_widget.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Doctor Details')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                const DoctorPersonalData(),
                const AboutDoctorWidget(),
                const DoctorReviewsWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: AppElevatedButton(
          onPressed: () {
            context.pushNamed(Routes.BookingScreen);
          },
          label: 'Make An Appointment',
        ),
      ),
    );
  }
}
