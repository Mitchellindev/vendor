import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/payment/data/models/payment_history_model.dart';
import 'package:broadcaadvendor/features/payment/data/providers/payment_history_provider.dart';
import 'package:broadcaadvendor/features/payment/presentation/widgets/payment_history_item.dart';
import 'package:flutter/material.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PaymentHistoryModel> history =
        PaymentHistoryProvider.getHistory();
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Payment History",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: List.generate(
            history.length,
            (index) => PaymentHistoryItem(
              image: history[index].image,
              label: history[index].label,
              price: history[index].price,
              date: history[index].date,
              status: history[index].status,
              onTap: () {
                Navigator.pushNamed(context, Routes.paymentHistoryDetails);
              },
            ),
          ),
        ),
      ),
    );
  }
}
