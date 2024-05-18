import '../../../../core/widgets/text_widget.dart';
import 'details_row.dart';
import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: "Payment Summary",
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 30,
          ),
          DetailsRow(
            title: "Price",
            value: "NGN 7,000",
          ),
          SizedBox(
            height: 30,
          ),
          DetailsRow(
            title: "Total Payment:",
            value: "NGN 7,000",
          )
        ],
      ),
    );
  }
}
