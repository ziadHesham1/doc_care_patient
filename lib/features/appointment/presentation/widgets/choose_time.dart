import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';

class ChooseTime extends StatefulWidget {
  final Function(String selectedTime) onTimeSelected;
  const ChooseTime({
    super.key,
    required this.onTimeSelected,
  });

  @override
  State<ChooseTime> createState() => _ChooseTimePeriodState();
}

class _ChooseTimePeriodState extends State<ChooseTime> {
  var list = ['09-10 AM', '10-11 AM', '11-12 PM', '04-05 AM'];
  late String tag;
  @override
  void initState() {
    super.initState();
    tag = list[0];
    widget.onTimeSelected(tag);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Time',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 10.h),
        Center(
          child: ChipsChoice.single(
            wrapped: true,
            alignment: WrapAlignment.center,
            padding: EdgeInsets.zero,
            value: tag,
            onChanged: (val) {
              setState(() => tag = val);
              widget.onTimeSelected(tag);
            },
            choiceItems: list.map((e) => C2Choice(value: e, label: e)).toList(),
            choiceStyle: C2ChipStyle.filled(
              foregroundStyle: AppTextStyles.font14Primary,
              selectedStyle: C2ChipStyle(
                foregroundStyle: AppTextStyles.font14White,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                height: 40.h,
                backgroundColor: AppColors.primary,
              ),
              color: AppColors.grey30,
              borderRadius: BorderRadius.all(
                Radius.circular(10.r),
              ),
              height: 35.h,
            ),
          ),
        ),
      ],
    );
  }
}
