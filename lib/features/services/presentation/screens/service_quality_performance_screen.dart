import 'package:broadcaadvendor/app/enums/enums.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/helpers.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/services/presentation/widgets/rejected_service_item_widget.dart';
import 'package:flutter/material.dart';

class ServiceQualityPerformanceScreen extends StatefulWidget {
  const ServiceQualityPerformanceScreen({super.key});

  @override
  State<ServiceQualityPerformanceScreen> createState() =>
      _ServiceQualityPerformanceScreenState();
}

class _ServiceQualityPerformanceScreenState
    extends State<ServiceQualityPerformanceScreen> {
  DateTime selectedDate = DateTime.now();
  List<Map<String, dynamic>> items = [
    {
      "title": "Bridal Makeover",
      "image": "assets/images/service_img.png",
      "subtitle": "10th May,2023",
      "trend": Trend.up,
      "amount": 400,
      "status": ServiceTrend.completed,
    },
    {
      "title": "Bridal Makeover",
      "image": "assets/images/service_img.png",
      "subtitle": "10th May,2023",
      "trend": Trend.up,
      "amount": 400,
      "status": ServiceTrend.none,
    },
    {
      "title": "Bridal Makeover",
      "image": "assets/images/service_img.png",
      "subtitle": "10th May,2023",
      "trend": Trend.down,
      "amount": 400,
      "status": ServiceTrend.rejected,
    },
    {
      "title": "Bridal Makeover",
      "image": "assets/images/service_img.png",
      "subtitle": "10th May,2023",
      "trend": Trend.down,
      "amount": 400,
      "status": ServiceTrend.rejected,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Service Quality Performances",
          fontSize: 20,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextWidget(
                text: "23 Sept, 2023",
                fontSize: 21,
                textAlign: TextAlign.center,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 0.5,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        text: "Completed/Rejected",
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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                  text: "Rejected/Completed",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                TextWidget(
                  onTap: () {
                    Navigator.pushNamed(
                        context, Routes.completedRejectedServices);
                  },
                  text: "See All",
                  fontSize: 18,
                  color: const Color.fromARGB(79, 3, 14, 79),
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                  items.length,
                  (index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,
                              Routes.rejectedCompletedServiceDetailsScreen);
                        },
                        child: RejectedCompletedServiceItemWidget(
                          title: items[index]["title"],
                          image: items[index]["image"],
                          subtitle: items[index]["subtitle"],
                          trend: items[index]["trend"],
                          amount: items[index]["amount"],
                          status: items[index]["status"],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
