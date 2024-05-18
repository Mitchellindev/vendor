import '../../../../core/widgets/horizontal_divider.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../services/presentation/widgets/package_item.dart';
import '../../../services/presentation/widgets/payment_summary.dart';
import 'package:flutter/material.dart';

class SalesStockDetailsScreen extends StatelessWidget {
  const SalesStockDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Bridal Makeup Service",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(15, 3, 14, 79),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/profile_pic.png",
                      width: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          color: Theme.of(context).colorScheme.primary,
                          text: "Sanni Kayinsola",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        TextWidget(
                          text: "Ikoyi, Lagos",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        TextWidget(
                          text: "24 Nov. 2023  6:45PM",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: TextWidget(
                  text: "Payment Method: Credit Card",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const HorizontalDivider(),
              const PackageItem(),
              const HorizontalDivider(
                paddingVertical: 30,
              ),
              const PaymentSummary(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Status",
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Completed:",
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Image.asset(
                          "assets/images/up_trend.png",
                          width: 30,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
