import 'dart:ui';

import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(14, 3, 14, 79),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/fund.png",
              width: 30,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: "Request Money",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                TextWidget(
                  text: "10th May,2023 . 10 AM",
                  fontSize: 14,
                )
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: "NGN +400",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                TextWidget(
                  text: "Successfull",
                  fontSize: 14,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
