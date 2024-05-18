import '../../../../core/utils/helpers.dart';
import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({
    super.key,
    required this.selectedDate,
    required this.label,
  });

  final DateTime selectedDate;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 0.5, color: Theme.of(context).colorScheme.inversePrimary),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: label,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  const TextWidget(
                    text: "Date",
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Helpers.showCupertinoDatePicker(
                          context, selectedDate, (DateTime newDate) {});
                    },
                    child: const Icon(
                      Icons.arrow_drop_down,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/service_chart.png")
        ],
      ),
    );
  }
}
