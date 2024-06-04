import 'package:flutter/material.dart';

import '../../../../app/enums/enums.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/utils/helpers.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../services/presentation/widgets/rejected_service_item_widget.dart';

class SalesStocksScreen extends StatefulWidget {
  const SalesStocksScreen({super.key});

  @override
  State<SalesStocksScreen> createState() => _SalesStocksScreenState();
}

class _SalesStocksScreenState extends State<SalesStocksScreen> {
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
        title: Transform.translate(
          offset: const Offset(-10, 0),
          child: const TextWidget(
            text: "Sales/Stock",
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const TextWidget(
                        text: "Dec 2023",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      IconButton(
                        onPressed: () {
                          Helpers.showCupertinoDatePicker(
                              context, selectedDate, (DateTime newDate) {});
                        },
                        icon: Image.asset(
                          "assets/images/drop_down.png",
                          width: 24,
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextWidget(
                            text: "Rej...:",
                            fontSize: 14,
                          ),
                          TextWidget(
                            text: " NGN 2,000.00",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: "com...:",
                            fontSize: 14,
                          ),
                          TextWidget(
                            text: " NGN 2,000.00",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.getProportionateScreenHeight(
                  context: context, inputHeight: 490),
              child: ListView(
                children: List.generate(
                    items.length,
                    (index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.salesStockDetails);
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
