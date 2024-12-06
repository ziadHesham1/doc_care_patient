// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:timelines/timelines.dart';

// import 'package:doc_care_core/core/theming/app_colors.dart';

// enum ProcessStatus { none, before, current, after }

// class BookingProcessWidget extends StatelessWidget {
//   final int processIndex;
//   final List<String> steps;
//   // final Function(int index) onConnectorTap;
//   const BookingProcessWidget({
//     super.key,
//     required this.processIndex,
//     required this.steps,
//   });

//   Color getColor(int index) {
//     if (index > processIndex) {
//       return AppColors.grey30;
//     } else {
//       return AppColors.primary;
//     }
//   }

//   ProcessStatus getCurrentStatus(index) {
//     if (index < processIndex) {
//       return ProcessStatus.after;
//     } else if (index == processIndex) {
//       return ProcessStatus.current;
//     } else {
//       return ProcessStatus.before;
//     }
//   }

//   // final List<String> processList = [
//   //   'Date & Time',
//   //   'Payment',
//   //   'Summary',
//   // ];
//   @override
//   Widget build(BuildContext context) {
//     return Timeline.tileBuilder(
//       theme: TimelineThemeData(
//         direction: Axis.horizontal,
//         connectorTheme: ConnectorThemeData(
//           space: 5.0.h,
//           thickness: 2.0.h,
//         ),
//       ),
//       builder: TimelineTileBuilder.connected(
//         connectionDirection: ConnectionDirection.before,
//         oppositeContentsBuilder: (context, index) {
//           return contentWidget(steps, index);
//         },
//         indicatorBuilder: (_, index) {
//           ProcessStatus status = getCurrentStatus(index);
//           return GestureDetector(
//             onTap: () {
//               // if (index < processIndex) {
//               //   onConnectorTap(index);
//               // }
//             },
//             child: connector(index, status),
//           );
//         },
//         connectorBuilder:
//             (BuildContext context, int index, ConnectorType type) {
//           return SolidLineConnector(color: getColor(index));
//         },
//         itemCount: steps.length,
//       ),
//     );
//   }

//   Widget connector(index, ProcessStatus status) {
//     if (status == ProcessStatus.after) {
//       return checkedConnector(index + 1);
//     } else if (status == ProcessStatus.current) {
//       return currentConnector(index + 1);
//     } else if (status == ProcessStatus.before) {
//       return beforeConnector(index + 1);
//     }

//     return Container();
//   }

//   Widget contentWidget(list, index) {
//     return Container(
//       alignment: Alignment.center,
//       width: 120.w,
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       child: Text(
//         list[index],
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           color: getCurrentStatus(index) == ProcessStatus.before
//               ? AppColors.grey50
//               : AppColors.primary,
//           fontSize: 12.sp,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     );
//   }

//   Container beforeConnector(index) {
//     return Container(
//       width: 30.w,
//       height: 30.h,
//       alignment: Alignment.center,
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         color: AppColors.grey30,
//       ),
//     );
//   }

//   Container currentConnector(index) {
//     return Container(
//       width: 30.w,
//       height: 30.h,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: AppColors.grey50,
//         ),
//       ),
//       child: Text(index.toString(),
//           style: const TextStyle(color: AppColors.primary)),
//     );
//   }

//   Container checkedConnector(index) {
//     return Container(
//         width: 30.w,
//         height: 30.h,
//         alignment: Alignment.center,
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: AppColors.primary,
//         ),
//         child: Icon(Icons.done, color: Colors.white, size: 16.h));
//   }
// }
