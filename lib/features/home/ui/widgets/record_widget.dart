import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/widgets/app_icon_with_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordWidget extends StatelessWidget {
  final String title;
  final List recordItems;
  const RecordWidget({
    super.key,
    required this.recordItems,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: recordItems.length == 1
              ? record()
              : Column(
                  children: recordItems
                      .asMap()
                      .entries
                      .map(
                        (entry) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            record(),
                            if (entry.key != recordItems.length - 1)
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Divider(
                                  thickness: 2,
                                ),
                              ),
                          ],
                        ),
                      )
                      .toList(),
                ),
        ),
      ],
    );
  }

  Row record() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Normal Checkup',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'by Dr. John Doe',
              style: TextStyle(
                color: AppColors.grey,
                // fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
        const AppIconWithTextWidget(
          icon: Icons.calendar_month,
          text: '03.03.2024',
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          iconColor: AppColors.primary,
        ),
      ],
    );
  }
}
