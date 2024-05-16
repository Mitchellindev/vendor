import 'package:broadcaadvendor/core/utils/helpers.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ClicksViewsChartContainer extends StatelessWidget {
  const ClicksViewsChartContainer({
    super.key,
    required this.selectedDate,
  });

  final DateTime selectedDate;

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
              const TextWidget(
                text: "Click/Views",
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
          Padding(
            padding:
                const EdgeInsets.only(top: 50.0).copyWith(left: 30, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: CircularProgressIndicator(
                        strokeWidth: 7,
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        value: 0.7,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(
                        strokeWidth: 7,
                        color: const Color(0xffA5F1E9),
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        value: 0.5,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 9,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          children: [
                            TextWidget(
                              text: "Clicks",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: "321",
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 9,
                          backgroundColor: Color(0xffA5F1E9),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            TextWidget(
                              text: "Views",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: "32",
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
