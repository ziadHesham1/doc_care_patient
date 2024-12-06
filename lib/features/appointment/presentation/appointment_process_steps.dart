import 'package:doc_care_patient/features/appointment/presentation/views/booking_summery_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doc_care_core/core/features/steps_process/layout_steps_model.dart';
import 'package:doc_care_core/core/features/steps_process/step_process_interface.dart';
import '../data/models/appointment_info.dart';
import '../logic/new_appointment_cubit.dart';
import '../logic/new_appointment_state.dart';
import 'views/booking_bending_view.dart';
import 'views/booking_payment_view.dart';
import 'widgets/available_appointments.dart';

class BookingDateAndTimeProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return LayoutStepsModel(
      title: 'Date & Time',
      content: AvailableAppointments(
        onAppointmentSelected: (selectedAppointment) {},
      ),
    );
  }

  @override
  bool onBack(BuildContext context) => false;

  @override
  bool onNext(BuildContext context) {
    // return true;
    var state = context.read<BookingCubit>().state;
    if (state is AppointmentSelected && state.appointmentInfo!.isValid()) {
      context.read<BookingCubit>().onBookingRequested();
      return true;
    }

    return false;
  }
}

class BookingPendingProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return const LayoutStepsModel(
      title: 'Pending',
      content: BookingBendingView(),
    );
  }

  @override
  bool onBack(BuildContext context) => true;

  @override
  bool onNext(BuildContext context) => true;
}

class BookingPaymentProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return const LayoutStepsModel(
      title: 'Payment',
      content: BookingPaymentView(),
    );
  }

  @override
  String? nextText() => 'Payment Sent ';

  @override
  bool onBack(BuildContext context) => true;

  @override
  bool onNext(BuildContext context) => true;
}

class BookingSummaryProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return const LayoutStepsModel(
      title: 'Summary',
      content: BookingSummeryView(),
    );
  }

  @override
  bool onBack(BuildContext context) => false;

  @override
  bool onNext(BuildContext context) => true;
  @override
  nextText() => 'Done';
}
