import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../widgets/appointment_info_widget.dart';

class AppExpandedRow extends StatelessWidget {
  final List<Widget> children;
  final double? spacing;

  const AppExpandedRow({super.key, required this.children, this.spacing});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: children
          .map((child) => Row(
                children: [
                  Expanded(child: child),
                ],
              ))
          .toList(),
    );
  }
}

class BookingPaymentView extends StatefulWidget {
  const BookingPaymentView({
    super.key,
  });

  @override
  State<BookingPaymentView> createState() => _BookingPaymentViewState();
}

class _BookingPaymentViewState extends State<BookingPaymentView> {
  String _selectedValue = 'Instapay';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppointmentInfoWidget(),
          SizedBox(height: 20.h),
          Text(
            'Select Payment Method',
            style: AppTextStyles.font16DarkBlueSemiBold,
          ),
          _paymentOption(
            AppAssets.instapay_icon,
            'Instapay',
          ),
          _paymentOption(
            AppAssets.v_cash_icon,
            'Vodafone Cash',
          ),
        ],
      ),
    );
  }

  _paymentOption(icon, text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioListTile(
          contentPadding: EdgeInsets.zero,
          value: text,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          title: Row(
            children: [
              Image.asset(
                icon,
                width: 50.w,
                height: 40.h,
              ),
              SizedBox(width: 4.w),
              Text(
                text,
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 14.sp,
                  // fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        // if (_selectedValue == text) child,
      ],
    );
  }
}
