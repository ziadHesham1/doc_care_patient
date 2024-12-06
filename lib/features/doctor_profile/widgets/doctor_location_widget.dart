import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:doc_care_core/core/theming/app_text_styles.dart';

class DoctorLocationWidget extends StatefulWidget {
  const DoctorLocationWidget({
    super.key,
  });

  @override
  State<DoctorLocationWidget> createState() => _DoctorLocationWidgetState();
}

class _DoctorLocationWidgetState extends State<DoctorLocationWidget> {
  late GoogleMapController mapController;

  // final LatLng _center = const LatLng(37.7749, -122.4194);
  // San Francisco
  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 8.h),
        Text(
          ' 10 Mohammed Mokbel, Fleming, قسم أول, Alexandria Governorate 21532',
          style: AppTextStyles.font14Grey,
        ),
        SizedBox(height: 15.h),
        Text(
          'Location Map',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 8.h),
        // SizedBox(
        //   height: 300.h,
        //   child: GoogleMap(
        //     onMapCreated: _onMapCreated,
        //     initialCameraPosition: CameraPosition(
        //       target: _center,
        //       zoom: 11.0,
        //     ),
        //     myLocationEnabled: true,
        //     myLocationButtonEnabled: true,
        //   ),
        // ),
      ],
    );
  }
}
