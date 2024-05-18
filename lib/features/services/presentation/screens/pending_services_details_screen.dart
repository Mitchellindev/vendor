import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/horizontal_divider.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/package_item.dart';
import '../widgets/payment_summary.dart';
import '../../../store/presentation/widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class PendingServicesDetailsScreen extends StatelessWidget {
  const PendingServicesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Booked Service Details",
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
                    borderRadius: BorderRadius.circular(10)),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0)
                .copyWith(bottom: 20),
            child: Column(
              children: [
                PrimaryButton(
                    label: "Accept Booking", onPressed: () {}, isEnabled: true),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButtonWidget(
                  label: "Reject Booking",
                  onTap: () {},
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
