import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../widgets/appointment_info_widget.dart';

class BookingSummeryView extends StatelessWidget {
  const BookingSummeryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            height: 100.h,
            width: 50.w,
            AppAssets.finished_icon,
            color: const Color.fromARGB(255, 79, 201, 83),
          ),
          Text('Payment Successful',
              style: AppTextStyles.font16DarkBlueSemiBold),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40.w,
              vertical: 5.h,
            ),
            child: Text(
              'You have Successfully booked your appointment',
              style: AppTextStyles.font14Grey,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50.h),
          const Center(child: AppointmentInfoWidget()),
        ],
      ),
    );
  }
}
