import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/wallet/presentation/widgets/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllTransactionsScreen extends StatefulWidget {
  const AllTransactionsScreen({super.key});

  @override
  State<AllTransactionsScreen> createState() => _AllTransactionsScreenState();
}

class _AllTransactionsScreenState extends State<AllTransactionsScreen> {
  DateTime selectedDate = DateTime.now();
  void showCupertinoDatePicker(BuildContext context, DateTime selectedDate,
      Function(DateTime) onDateSelected) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return SizedBox(
          height: 320, // Set a desired height for the content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  initialDateTime: selectedDate,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime newDate) {
                    onDateSelected(newDate);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: PrimaryButton(
                    label: "Confirm", onPressed: () {}, isEnabled: true),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "All Transactions",
          fontSize: 21,
          fontWeight: FontWeight.w600,
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
                          showCupertinoDatePicker(
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
                            text: "Fund:",
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
                            text: "With:",
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      TextWidget(
                        text: "Fund:",
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
            ),
            SizedBox(
              height: SizeConfig.getProportionateScreenHeight(
                  context: context, inputHeight: 500),
              child: ListView(
                children: const [Transactions()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
