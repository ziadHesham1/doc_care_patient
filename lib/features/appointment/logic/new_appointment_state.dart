import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/appointment_info.dart';

part 'new_appointment_state.freezed.dart';

@freezed
abstract class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;

  const factory BookingState.loading() = _Loading;
  // ----------------------------------------------

  const factory BookingState.appointmentSelected(
      {AppointmentInfo? appointmentInfo}) = AppointmentSelected;
  const factory BookingState.paymentRequested(
      {AppointmentInfo? appointmentInfo}) = PaymentRequested;

  const factory BookingState.paymentRequestAccepted(
      {AppointmentInfo? appointmentInfo}) = PaymentRequestAccepted;

  const factory BookingState.paymentRequestRejected(
      {AppointmentInfo? appointmentInfo}) = PaymentRequestRejected;

  const factory BookingState.paymentSent() = PaymentSent;

  const factory BookingState.paymentConfirmed() = PaymentConfirmed;

  const factory BookingState.paymentRejected() = PaymentRejected;
}
