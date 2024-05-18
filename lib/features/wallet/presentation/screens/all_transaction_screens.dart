import '../../../../core/utils/helpers.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/transactions.dart';
import 'package:flutter/material.dart';

class AllTransactionsScreen extends StatefulWidget {
  const AllTransactionsScreen({super.key});

  @override
  State<AllTransactionsScreen> createState() => _AllTransactionsScreenState();
}

class _AllTransactionsScreenState extends State<AllTransactionsScreen> {
  DateTime selectedDate = DateTime.now();

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
                  context: context, inputHeight: 490),
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
