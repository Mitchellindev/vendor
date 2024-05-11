import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/features/wallet/presentation/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          20,
          (index) => TransactionWidget(
                onTap: () {
                  Navigator.pushNamed(context, Routes.transactionDetails);
                },
              )),
    );
  }
}