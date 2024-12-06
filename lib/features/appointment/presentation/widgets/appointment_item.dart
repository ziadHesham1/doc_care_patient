import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import 'package:doc_care_patient/features/appointment/data/models/appointment_info.dart';
import 'package:doc_care_patient/features/appointment/presentation/widgets/ischooler_timeline_tile.dart';
import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  final AppointmentInfo appointmentInfo;
  final bool isFirst;
  final bool isLast;
  const AppointmentItem({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.appointmentInfo,
  });

  @override
  Widget build(BuildContext context) {
    return AppTimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      endChild: Container(
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(8),
        child: ListTile(
          title: Text(appointmentInfo.place),
          subtitle: Text(appointmentInfo.date),
        ),
      ),
      startChild: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appointmentInfo.startTime,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              appointmentInfo.endTime,
              style:
                  AppTextStyles.font12Primary.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
