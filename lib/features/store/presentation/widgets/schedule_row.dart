import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ScheduleRow extends StatelessWidget {
  const ScheduleRow({super.key, required this.day, required this.time});
  final String day;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: day,
            fontSize: 18,
          ),
          TextWidget(
            text: time,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          )
        ],
      ),
    );
  }
}
