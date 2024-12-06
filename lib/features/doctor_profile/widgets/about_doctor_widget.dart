import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:read_more_text/read_more_text.dart';

import 'package:doc_care_core/core/theming/app_text_styles.dart';

class AboutDoctorWidget extends StatelessWidget {
  const AboutDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        Text(
          'About Me',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 8.h),
        ReadMoreText(
          'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London.'
          ' She achived several awards for her wonderful contribution in medical field.'
          ' She is available for private consultation.',
          numLines: 3,
          readMoreAlign: Alignment.bottomLeft,
          readMoreText: 'Read more',
          readLessText: 'Read less',
          style: AppTextStyles.font14Grey,
        ),
        SizedBox(height: 15.h),
        Text(
          'Working Time',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 8.h),
        Text(
          'Monday - Friday, 08.00 AM - 20.00 PM',
          style: AppTextStyles.font14Grey,
        ),
        SizedBox(height: 15.h),
        Text(
          'Phone Number',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 8.h),
        Text(
          '4726482464',
          style: AppTextStyles.font14Grey,
        ),
        SizedBox(height: 20.h),
        Text(
          'Address',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 8.h),
        Text(
          ' 10 Mohammed Mokbel, Fleming, قسم أول, Alexandria Governorate 21532',
          style: AppTextStyles.font14Grey,
        ),
      ],
    );
  }
}
