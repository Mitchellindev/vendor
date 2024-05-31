import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';
import 'map_widget.dart';
import 'schedule_row.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> schedule = [
      {"day": "Monday", "time": "9.00am - 8.00pm"},
      {"day": "Tuesday", "time": "9.00am - 8.00pm"},
      {"day": "Wednesday", "time": "9.00am - 8.00pm"},
      {"day": "Thursday", "time": "9.00am - 8.00pm"},
      {"day": "Friday", "time": "9.00am - 8.00pm"},
      {"day": "Saturday", "time": "9.00am - 8.00pm"},
      {"day": "Sunday", "time": "9.00am - 8.00pm"},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text:
                "Ify’s catering is a vibrant catering service that captures the essence of taste and satisfaction.. ",
            fontSize: 18,
          ),
          const SizedBox(
            height: 30,
          ),
          const TextWidget(
            textAlign: TextAlign.right,
            text: "Schedule",
            fontWeight: FontWeight.w500,
            fontSize: 21,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text:
                    "Ify’s catering is a vibrant catering service that captures the essence of taste and satisfaction.. ",
                fontSize: 18,
              ),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(
                textAlign: TextAlign.right,
                text: "Schedule",
                fontWeight: FontWeight.w500,
                fontSize: 21,
              ),
              Column(
                  children: List.generate(
                7,
                (index) => ScheduleRow(
                  day: schedule[index]["day"],
                  time: schedule[index]["time"],
                ),
              ))
            ],
          ),
          const MapWidget(),
          const TextWidget(
            text: "Ify’s Catering, Ikoyi, Lagos State",
            fontSize: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
            text: "Edit Location",
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
