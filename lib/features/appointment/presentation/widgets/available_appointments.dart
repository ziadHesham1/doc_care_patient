import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_extensions.dart';
import '../../data/models/appointment_info.dart';
import '../../logic/new_appointment_cubit.dart';
import 'choose_date.dart';
import 'choose_time.dart';
import 'choose_place.dart';

class AvailableAppointments extends StatefulWidget {
  final Function(AppointmentInfo selectedAppointment) onAppointmentSelected;
  const AvailableAppointments({
    super.key,
    required this.onAppointmentSelected,
  });

  @override
  State<AvailableAppointments> createState() => _AvailableAppointmentsState();
}

class _AvailableAppointmentsState extends State<AvailableAppointments> {
  AppointmentInfo appointmentInfo = AppointmentInfo(
    date: '10-12-2022',
    endTime: '10:00 AM',
    place: 'Clinic 1',
    startTime: '09:00 AM',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChooseDate(onDateSelected: _onDateSelected),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              ChoosePlace(onPlaceSelected: _onPlaceSelected),
              SizedBox(height: 20.h),
              ChooseTime(onTimeSelected: _onTimeSelected),
            ],
          ),
        ),
      ],
    );
  }

  _onDateSelected(DateTime date) {
    appointmentInfo = appointmentInfo.copyWith(date: date.dMMMyyyyFormatOrNull);
    context
        .read<BookingCubit>()
        .onAppointmentSelected(appointmentInfo: appointmentInfo);
  }

  _onTimeSelected(selectedTime) {
    appointmentInfo = appointmentInfo.copyWith(startTime: selectedTime);
    context
        .read<BookingCubit>()
        .onAppointmentSelected(appointmentInfo: appointmentInfo);
  }

  _onPlaceSelected(place) {
    appointmentInfo = appointmentInfo.copyWith(place: place);
    context
        .read<BookingCubit>()
        .onAppointmentSelected(appointmentInfo: appointmentInfo);
  }
}
