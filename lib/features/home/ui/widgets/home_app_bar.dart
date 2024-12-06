import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/shared_pref/shared_pref_helper.dart';
import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              'Hi, Omar!',
              style: AppTextStyles.font24BlackBold,
            ),
            // SizedBox(height: 10.h),
            Text(
              'How are you today?',
              style: AppTextStyles.font13Grey80,
            ),
          ],
        ),
        // notification icon button
        const Spacer(),
        IconButton(
          onPressed: () {},
          // background grey
          style: IconButton.styleFrom(
            backgroundColor: AppColors.grey20,
            shape: const CircleBorder(),
          ),
          icon: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  )),
              const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            SharedPrefHelper.clearAllSecuredData();
          },
          // background grey
          style: IconButton.styleFrom(
            backgroundColor: AppColors.grey20,
            shape: const CircleBorder(),
          ),
          icon: const Icon(
            Icons.logout_outlined,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
