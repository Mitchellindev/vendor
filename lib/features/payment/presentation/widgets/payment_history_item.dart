import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PaymentHistoryItem extends StatelessWidget {
  const PaymentHistoryItem(
      {super.key,
      required this.image,
      required this.label,
      required this.price,
      required this.date,
      required this.status});
  final String image;
  final String label;
  final int price;
  final String date;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: label,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(
                    text: "NGN $price",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(
                    text: date,
                    fontSize: 16,
                  )
                ],
              )
            ],
          ),
          const TextWidget(
            text: "Completed",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
