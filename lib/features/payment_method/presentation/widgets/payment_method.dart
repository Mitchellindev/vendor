import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod(
      {super.key,
      required this.image,
      required this.label,
      required this.onTap});
  final String image;
  final VoidCallback onTap;

  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  image,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            TextWidget(
              text: label,
              fontSize: 21,
            )
          ],
        ),
      ),
    );
  }
}
