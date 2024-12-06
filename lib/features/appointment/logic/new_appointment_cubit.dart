import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/appointment_info.dart';
import 'new_appointment_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(const BookingState.initial());

  onAppointmentSelected({required AppointmentInfo appointmentInfo}) {
    emit(
      BookingState.appointmentSelected(
        appointmentInfo: appointmentInfo,
      ),
    );
  }

  onBookingRequested() {
    if (state is AppointmentSelected) {
      var currentState = (state as AppointmentSelected);
      emit(
        BookingState.paymentRequested(
          appointmentInfo: currentState.appointmentInfo,
        ),
      );
    }
  }

  onPaymentRequestAccepted() {
    if (state is PaymentRequested) {
      var currentState = (state as PaymentRequested);
      emit(
        BookingState.paymentRequestAccepted(
          appointmentInfo: currentState.appointmentInfo,
        ),
      );
    }
  }

  onPaymentRequestRejected() {
    if (state is PaymentRequested) {
      var currentState = (state as PaymentRequested);
      emit(
        BookingState.paymentRequestRejected(
          appointmentInfo: currentState.appointmentInfo,
        ),
      );
    }
  }

  onPaymentSent() {
    if (state is PaymentRequestAccepted) {
      emit(const BookingState.paymentSent());
    }
  }

  onPaymentConfirmed() {
    if (state is PaymentSent) {
      emit(const BookingState.paymentConfirmed());
    }
  }

  onPaymentRejected() {
    if (state is PaymentSent) {
      emit(const BookingState.paymentRejected());
    }
  }
}
