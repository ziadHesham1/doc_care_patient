import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Todo:: remove this and use the one in [TextStyles]

    var font32Blue700Weight = TextStyle(
      fontSize: 32.sp,
      color: AppColors.primary,
      fontWeight: FontWeight.w700,
    );
    return Stack(
      children: [
        SvgPicture.asset(AppAssets.docdoc_logo_low_opacity),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              stops: const [0.14, 0.4],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            )),
            child: Image.asset(
              AppAssets.onboarding_doctor,
            )),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: font32Blue700Weight.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
