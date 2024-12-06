import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_extensions.dart';
import 'package:doc_care_core/core/routing/routes.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'review_widget.dart';

class DoctorReviewsWidget extends StatelessWidget {
  const DoctorReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: AppTextStyles.font16DarkBlueSemiBold,
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.reviewsScreen);
              },
              child: Text(
                'See all',
                style: AppTextStyles.font12PrimarySemiBold,
              ),
            )
          ],
        ),
        SizedBox(height: 8.h),
        ...List.generate(
          3,
          (index) => const ReviewWidget(),
        )
      ],
    );
  }
}

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var list = List.generate(
      13,
      (index) => const ReviewWidget(),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Reviews')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => list[index],
        ),
      ),
    );
  }
}
