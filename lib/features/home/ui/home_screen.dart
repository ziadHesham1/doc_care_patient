import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/home_appointment_card.dart';
import 'widgets/records_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const HomeAppBar(),
              SizedBox(height: 15.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const HomeAppointmentCard(),
                      SizedBox(height: 15.h),
                      const RecordsListWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
