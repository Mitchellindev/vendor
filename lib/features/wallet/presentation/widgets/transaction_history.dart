import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/wallet/presentation/widgets/transactions.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key, required this.seeAllAction});
  final VoidCallback seeAllAction;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextWidget(
              text: "Transactions",
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            TextWidget(
              onTap: seeAllAction,
              text: "See all",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Transactions()
      ],
    );
  }
}
