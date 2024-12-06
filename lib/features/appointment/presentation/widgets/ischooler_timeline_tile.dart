import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'package:doc_care_core/core/theming/app_colors.dart';

class AppTimelineTile extends StatelessWidget {
  final bool hasIndicator;
  final Widget? endChild;
  final Widget? startChild;
  final bool isFirst;
  final bool isLast;
  const AppTimelineTile({
    super.key,
    this.hasIndicator = true,
    this.isFirst = false,
    this.isLast = false,
    this.endChild,
    this.startChild,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      hasIndicator: hasIndicator,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: const IndicatorStyle(width: 10, color: AppColors.primary),
      beforeLineStyle: const LineStyle(color: AppColors.primary),
      alignment: TimelineAlign.manual,
      lineXY: 0.25,
      endChild: endChild,
      startChild: startChild,
    );
  }
}
