import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';

class ChooseDate extends StatefulWidget {
  final Function(DateTime selectedDate) onDateSelected;

  const ChooseDate({
    super.key,
    required this.onDateSelected,
  });

  @override
  State<ChooseDate> createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  late DateTime _selectedValue;
  @override
  void initState() {
    super.initState();
    _selectedValue = DateTime.now();
    widget.onDateSelected(_selectedValue);
  }

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      headerProps: EasyHeaderProps(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        dateFormatter: const DateFormatter.fullDateMonthAsStrDY(),
      ),
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
        setState(() {
          _selectedValue = selectedDate;
        });
        widget.onDateSelected(selectedDate);
      },
      dayProps: EasyDayProps(
        height: 56.0,
        width: 56.0,
        dayStructure: DayStructure.dayNumDayStr,
        inactiveDayStyle: DayStyle(
          decoration: BoxDecoration(
            color: AppColors.grey30,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          // borderRadius: 48.0,
          dayNumStyle: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        activeDayStyle: DayStyle(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          dayNumStyle: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
