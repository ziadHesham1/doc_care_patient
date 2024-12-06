import 'package:doc_care_core/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_assets.dart';
import 'package:doc_care_core/core/widgets/app_image_widget.dart';
import '../../home/data/models/specialization_model.dart';

class DoctorPersonalData extends StatelessWidget {
  const DoctorPersonalData({
    super.key,
  });
//TODO: make this a seperete widget instead of using DoctorItemWidget(),
  @override
  Widget build(BuildContext context) {
    final doctor = Doctor(
      name: 'Dr. John Doe',
      photo: AppAssets.doctor_image,
      degree: 'MBBS, MD, FRCS',
      phone: '1234567890',
      email: '1LlRd@example.com',
      address: '123 Main St, Anytown, USA',
      appointPrice: 1000,
      city: City(
        id: 1,
        name: 'Anytown',
        governorate: Governorate(id: 1, name: 'name'),
      ),
      description: 'tt',
      endTime: '10:00 AM',
      gender: 'F',
      id: 1,
      startTime: '10:00 AM',
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImageWidget(
              imageUrl: doctor.photo,
              borderRadius: 120.r,
            ),
            SizedBox(width: 20.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '${doctor.degree} | ${doctor.phone}',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    doctor.email,
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(indent: 6.w, endIndent: 6.w, thickness: 0.6, height: 40.h),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          NewWidget(
            icon: Icon(
              Icons.person,
              size: 30,
              color: AppColors.primary,
            ),
            data: '7500+',
            title: 'Patients',
          ),
          NewWidget(
            icon: Icon(
              Icons.work_history_outlined,
              size: 30,
              color: AppColors.primary,
            ),
            data: '10+',
            title: 'Yeas Exp.',
          ),
          NewWidget(
            icon: Icon(
              Icons.star,
              size: 30,
              color: AppColors.primary,
            ),
            data: '4.9+',
            title: 'Rating',
          ),
          NewWidget(
            icon: Icon(
              Icons.chat,
              size: 30,
              color: AppColors.primary,
            ),
            data: '4,956+',
            title: 'Reviews',
          ),
        ])
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.icon,
    required this.data,
    required this.title,
  });

  final Icon icon;
  final String data;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.grey30,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 12.w,
          ),
          child: icon,
        ),
        SizedBox(height: 8.h),
        Text(
          data,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            // fontWeight: FontWeight.w600,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
