import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/utils/helpers.dart';
import '../../../../core/widgets/text_widget.dart';

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
          const Flexible(child: ChartWidget())
        ],
      ),
    );
  }
}

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  late TooltipBehavior _tooltipBehavior;
  late TrackballBehavior _trackballBehavior;
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _trackballBehavior = TrackballBehavior();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          trackballBehavior: _trackballBehavior,
          primaryXAxis: const CategoryAxis(),
          title: const ChartTitle(text: 'Half yearly sales analysis'),
          legend: const Legend(
            isVisible: true,
          ),
          tooltipBehavior: _tooltipBehavior,
          series: <LineSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
                color: Theme.of(context).colorScheme.primary,
                dataSource: <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                // Enable data label
                dataLabelSettings: const DataLabelSettings(isVisible: true))
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
