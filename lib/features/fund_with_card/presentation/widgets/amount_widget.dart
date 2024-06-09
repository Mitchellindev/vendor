import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount({
    super.key,
    required this.amount,
  });
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
        decoration: BoxDecoration(
          color: const Color.fromARGB(54, 3, 14, 79),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextWidget(
          textAlign: TextAlign.center,
          text: amount,
          fontSize: 28.width,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
