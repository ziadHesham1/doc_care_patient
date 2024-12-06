import 'package:flutter/material.dart';

import 'record_widget.dart';

class RecordsListWidget extends StatelessWidget {
  const RecordsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: RecordWidget(
            title: 'Yesterday',
            recordItems: [1],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: RecordWidget(
            title: 'Last Week',
            recordItems: [1, 2],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: RecordWidget(
            title: 'September 2024',
            recordItems: [1, 2, 3, 4],
          ),
        ),
      ],
    );
  }
}
