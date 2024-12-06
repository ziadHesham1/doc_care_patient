import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/widgets/app_icon_with_text_widget.dart';

class HomeAppointmentCard extends StatelessWidget {
  const HomeAppointmentCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Next Appointment',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppIconWithTextWidget(
                    icon: Icons.calendar_month,
                    text: 'Sunday, 11 September 2024',
                  ),
                  SizedBox(height: 10.h),
                  const AppIconWithTextWidget(
                    icon: Icons.timer,
                    text: '08:00 - 09:00 AM',
                  ),
                ],
              ),
              // Container(
              //   decoration: const BoxDecoration(
              //     color: Colors.black87,
              //     shape: BoxShape.circle,
              //   ),
              //   padding: EdgeInsets.all(8.r),
              //   child: const Icon(
              //     Icons.call,
              //     size: 20,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            // margin: EdgeInsets.symmetric(vertical: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.finished_icon,
                  color: const Color.fromARGB(255, 79, 201, 83),
                  // borderRadius: 120.r,
                  height: 30.h,
                  width: 50.w,
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Booking Status',
                      style: TextStyle(
                        fontSize: 16.sp,
                        // color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Completed',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                // const Icon(Icons.message_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
