import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../widgets/appointment_info_widget.dart';

class BookingBendingView extends StatelessWidget {
  const BookingBendingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppointmentInfoWidget(),
          SizedBox(height: 30.h),
          SizedBox(
            height: 200.h,
            child: Image.asset(AppAssets.waiting_image, fit: BoxFit.fill),
          ),
          SizedBox(height: 10.h),
          Center(
            child: Text(
              'Please wait while we are booking your appointment',
              style: AppTextStyles.font16DarkBlueSemiBold,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
