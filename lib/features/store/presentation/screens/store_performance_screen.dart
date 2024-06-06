import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../app/enums/enums.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../services/presentation/widgets/rejected_service_item_widget.dart';
import '../widgets/chart_container.dart';
import '../widgets/click_views_chart_container.dart';
import '../widgets/clicks_widget.dart';
import '../widgets/rejected_sold_widget_item.dart';

class StorePerformanceScreen extends StatefulWidget {
  const StorePerformanceScreen({super.key});

  @override
  State<StorePerformanceScreen> createState() => _StorePerformanceScreenState();
}

class _StorePerformanceScreenState extends State<StorePerformanceScreen> {
  late PageController controller;
  @override
  void initState() {
    controller = PageController(initialPage: 1);
    super.initState();
  }

  int _selectedInt = 0;

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: Transform.translate(
          offset: const Offset(-10, 0),
          child: TextWidget(
            text: _selectedInt == 0
                ? "Sales/ Stock Performance"
                : _selectedInt == 1
                    ? "Store Interaction Performance"
                    : "Rejected/Sold",
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
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
            SizedBox(
              height: 500.height,
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    _selectedInt = value;
                  });
                },
                children: [
                  ChartContainer(
                    selectedDate: selectedDate,
                    label: "Completed/Rejected",
                  ),
                  ClicksViewsChartContainer(selectedDate: selectedDate),
                  ChartContainer(
                      selectedDate: selectedDate, label: "Rejected/Sold"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                      radius: 5,
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Theme.of(context).colorScheme.primary),
                  onDotClicked: (index) {
                    controller.animateToPage(index,
                        duration: const Duration(
                          seconds: 1,
                        ),
                        curve: Curves.decelerate);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (_selectedInt == 0)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(
                    text: "Sales/Stock",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.stockSales);
                    },
                    text: "View All",
                    fontSize: 18,
                    color: const Color(0xffF49F1C),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            if (_selectedInt == 1)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(
                    text: "Clicks/Views",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.clicksViewsList);
                    },
                    text: "View All",
                    fontSize: 18,
                    color: const Color(0xffF49F1C),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            if (_selectedInt == 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(
                    text: "Rejected/Sold Stock",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(
                    onTap: () {
                      Navigator.pushNamed(
                          context, Routes.rejectedSoldListScreen);
                    },
                    text: "View All",
                    fontSize: 18,
                    color: const Color(0xffF49F1C),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            const SizedBox(
              height: 20,
            ),
            if (_selectedInt == 0)
              Column(
                children: List.generate(
                    items.length,
                    (index) => GestureDetector(
                          onTap: () {},
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
            if (_selectedInt == 1)
              Column(
                children: List.generate(
                    items.length,
                    (index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,
                                Routes.rejectedCompletedServiceDetailsScreen);
                          },
                          child: ClicksItemWidget(
                            date: "5 Nov, 2023 ",
                            title: "Omega Stores",
                            image: items[index]["image"],
                            subtitle: "5 Clicks/ 10 Views",
                          ),
                        )),
              ),
            if (_selectedInt == 2)
              Column(
                children: List.generate(
                    items.length,
                    (index) => GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context,
                            //     Routes.rejectedCompletedServiceDetailsScreen);
                          },
                          child: RejectedSoldWidgetItem(
                            trailing: "Sold",
                            title: "Channel Bag",
                            image: items[index]["image"],
                            subtitle: "5 Nov, 2023 ",
                          ),
                        )),
              )
          ],
        ),
      ),
    );
  }
}
