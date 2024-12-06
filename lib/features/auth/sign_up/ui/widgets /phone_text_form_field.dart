import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_regex.dart';
import 'package:doc_care_core/core/widgets/fields/app_text_form_field.dart';
import '../../logic/signup_cubit.dart';

class PhoneTextFormField extends StatefulWidget {
  const PhoneTextFormField({super.key});

  @override
  State<PhoneTextFormField> createState() => _PhoneTextFormFieldState();
}

class _PhoneTextFormFieldState extends State<PhoneTextFormField> {
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      prefixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CountryCodePicker(
            // onInit: (code) {
            //   if (code != null) {
            //     newMethod(code, context);
            //   }
            // },
            onChanged: (code) {
              newMethod(code, context);
            },
            initialSelection: 'EG',
            favorite: const ['+EG', 'EG'],
            showCountryOnly: true,
            showOnlyCountryWhenClosed: true,
          ),
          SizedBox(
            height: 20.h,
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              width: 1.w,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      hintText: 'Phone Number',
      controller: context.read<SignupCubit>().phoneController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter phone number';
        }
        if (!AppRegex.isPhoneNumberValid(value)) {
          return 'Please enter valid phone number';
        }
        return null;
      },
    );
  }

  void newMethod(CountryCode code, BuildContext context) {
    if (code.dialCode != null) {
      context.read<SignupCubit>().phoneController.text =
          code.dialCode! + context.read<SignupCubit>().phoneController.text;
    }
  }
}
