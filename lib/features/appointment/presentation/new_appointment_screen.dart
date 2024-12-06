import 'package:flutter/material.dart';

import 'package:doc_care_core/core/features/steps_process/steps_screen.dart';
import 'appointment_process_steps.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Appointment'),
      ),
      body: StepsScreen(
        steps: [
          BookingDateAndTimeProcess(),
          BookingPendingProcess(),
          BookingPaymentProcess(),
          BookingSummaryProcess(),
        ],
      ),
    );
  }
}
