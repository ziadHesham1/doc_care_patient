import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../../data/models/appointment_info.dart';

class BookingPaymentWidget extends StatelessWidget {
  final AppointmentInfo selectedAppointment;

  const BookingPaymentWidget({
    super.key,
    required this.selectedAppointment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Appointment Information',
            style: AppTextStyles.font16DarkBlueSemiBold,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              AppAssets.calender_icon,
            ),
            title: const Text('Date & Time'),
            subtitle: Text(
              '${selectedAppointment.date} ${selectedAppointment.startTime}',
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              AppAssets.appointment_icon,
            ),
            title: const Text('Appointment Type'),
            subtitle: const Text(
              'In Person',
            ),
          ),
          Text(
            'Payment Method',
            style: AppTextStyles.font16DarkBlueSemiBold,
          ),
          Text(
            'Payment Info',
            style: AppTextStyles.font16DarkBlueSemiBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: AppTextStyles.font13Grey,
              ),
              Text(
                '\$4940',
                style: AppTextStyles.font16DarkBlueSemiBold,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: AppTextStyles.font13Grey,
              ),
              Text(
                '\$4',
                style: AppTextStyles.font16DarkBlueSemiBold,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Total',
                style: AppTextStyles.font16DarkBlueSemiBold,
              ),
              Text(
                '\$4944',
                style: AppTextStyles.font16DarkBlueSemiBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
