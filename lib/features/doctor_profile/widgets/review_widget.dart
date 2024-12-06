import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:read_more_text/read_more_text.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'package:doc_care_core/core/widgets/app_image_widget.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppImageWidget(
            imageUrl: AppAssets.doctor_image,
            borderRadius: 120.r,
            height: 50.h,
            width: 50.w,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Jane Cooper',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkBlue,
                  ),
                ),
                SizedBox(height: 8.h),
                StarRating(
                  mainAxisAlignment: MainAxisAlignment.start,
                  rating: 4,
                  color: AppColors.yellow,
                  allowHalfRating: false,
                ),
                SizedBox(height: 8.h),
                ReadMoreText(
                  "As someone who lives in a remote area with limited access to healthcare, "
                  "this telemedicine app has been a game changer for me. I can "
                  "easily schedule virtual appointments with doctors and get the care"
                  " I need without having to travel long distances.",
                  numLines: 2,
                  style: AppTextStyles.font14Grey,
                  readMoreAlign: Alignment.bottomLeft,
                  readMoreText: 'Read more',
                  readLessText: 'Read less',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
