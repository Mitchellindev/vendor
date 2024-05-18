import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/horizontal_divider.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../services/presentation/widgets/details_row.dart';
import 'package:flutter/material.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Transaction Details",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const TextWidget(
                    text: "Nov 7, 2023 11:03am",
                    fontSize: 18,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(14, 3, 14, 79),
                    ),
                    child: Column(
                      children: [
                        Column(
                            children: List.generate(
                          5,
                          (index) => const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: DetailsRow(
                                title: "Status", value: "Successful"),
                          ),
                        )),
                        const HorizontalDivider(
                          paddingVertical: 10,
                        ),
                        Column(
                          children: List.generate(
                            2,
                            (index) => const Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: DetailsRow(
                                  title: "Status", value: "Successful"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/chat.png",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 300,
                          child: TextWidget(
                            textAlign: TextAlign.center,
                            text: "Need help? Chat with Brooadcaad support bot",
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrimaryButton(
                        label: "Share Reciept",
                        onPressed: () {},
                        isEnabled: true)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
