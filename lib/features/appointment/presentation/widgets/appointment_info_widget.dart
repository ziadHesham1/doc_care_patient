import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../../data/models/appointment_info.dart';
import '../../logic/new_appointment_cubit.dart';
import '../../logic/new_appointment_state.dart';

class AppointmentInfoWidget extends StatelessWidget {
  const AppointmentInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          paymentRequested: (AppointmentInfo? appointmentInfo) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Appointment Information',
                style: AppTextStyles.font16DarkBlueSemiBold,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(AppAssets.calender_icon),
                title: const Text('Date & Time'),
                subtitle: Text(
                  '${appointmentInfo?.date}\n${appointmentInfo?.startTime}',
                  style: const TextStyle(color: AppColors.grey),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(AppAssets.appointment_icon),
                title: const Text('Appointment Place'),
                subtitle: Text(
                  '${appointmentInfo?.place}',
                  style: const TextStyle(color: AppColors.grey),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
