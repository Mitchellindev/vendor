import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/payment/presentation/widgets/payment_history_item.dart';
import 'package:flutter/material.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        "image": "assets/images/product.png",
        "label": "Channel Bag",
        "price": 6000,
        "date": "5 Nov, 2023 ",
        "status": "Completed"
      },
      {
        "image": "assets/images/product.png",
        "label": "Channel Bag",
        "price": 6000,
        "date": "5 Nov, 2023 ",
        "status": "Completed"
      },
      {
        "image": "assets/images/product.png",
        "label": "Channel Bag",
        "price": 6000,
        "date": "5 Nov, 2023 ",
        "status": "Completed"
      },
      {
        "image": "assets/images/product.png",
        "label": "Channel Bag",
        "price": 6000,
        "date": "5 Nov, 2023 ",
        "status": "Completed"
      },
    ];
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
            items.length,
            (index) => PaymentHistoryItem(
              image: items[index]["image"],
              label: items[index]["label"],
              price: items[index]["price"],
              date: items[index]["date"],
              status: items[index]["status"],
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
