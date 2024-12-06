import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.docdoc_logo_svg),
        SizedBox(width: 10.w),
        Text(
          'Docdoc',
          style: AppTextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
