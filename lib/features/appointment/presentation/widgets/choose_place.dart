import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';

class ChoosePlace extends StatefulWidget {
  // onPlaceSelected
  final Function(String selectedPlace) onPlaceSelected;
  const ChoosePlace({
    super.key,
    required this.onPlaceSelected,
  });

  @override
  State<ChoosePlace> createState() => _ChoosePlaceState();
}

class _ChoosePlaceState extends State<ChoosePlace> {
  var placesList = ['Miami', 'Sidi Gaber', 'Victoria'];
  late String selectedPlace;
  @override
  initState() {
    super.initState();
    selectedPlace = placesList[0];
    widget.onPlaceSelected(selectedPlace);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Place',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 10.h),
        Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: AppColors.grey30,
            ),
            child: ChipsChoice.single(
              padding: EdgeInsets.zero,
              value: selectedPlace,
              onChanged: (val) {
                setState(() => selectedPlace = val);
                widget.onPlaceSelected(selectedPlace);
              },
              choiceItems:
                  placesList.map((e) => C2Choice(value: e, label: e)).toList(),
              // choiceCheckmark: true,
              choiceStyle: C2ChipStyle.filled(
                foregroundStyle: AppTextStyles.font14Primary,
                selectedStyle: C2ChipStyle(
                  foregroundStyle: AppTextStyles.font14White,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.r),
                  ),
                  height: 40.h,
                  backgroundColor: AppColors.primary,
                ),
                color: AppColors.grey30,
                borderRadius: BorderRadius.all(
                  Radius.circular(25.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
