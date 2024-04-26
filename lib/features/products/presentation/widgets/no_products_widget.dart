import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NoProducts extends StatelessWidget {
  const NoProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/cuate.png",
          width: 117.14,
        ),
        const SizedBox(
          height: 10,
        ),
        const TextWidget(
          textAlign: TextAlign.center,
          text: "You have no product",
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        const SizedBox(
          height: 10,
        ),
        const TextWidget(
          textAlign: TextAlign.center,
          text: "Tap the add icon, to add product to store.",
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ],
    );
  }
}
