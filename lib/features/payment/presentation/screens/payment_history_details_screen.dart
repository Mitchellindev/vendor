import 'package:flutter/material.dart';

import '../../../../core/widgets/horizontal_divider.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../services/presentation/widgets/payment_summary.dart';

class PaymentHistoryDetailsScreen extends StatelessWidget {
  const PaymentHistoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Payment History Details",
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
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                        TextWidget(
                          text: "Ikoyi, Lagos",
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        TextWidget(
                          text: "24 Nov. 2023  6:45PM",
                          fontSize: 16,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Product Details",
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/female_bags.png",
                              width: 80,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const TextWidget(
                              text: "Female Black Bag",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        const TextWidget(
                          text: "X 1",
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    ),
                  ],
                ),
              ),
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
                          text: "Completed",
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary,
                        ),
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
