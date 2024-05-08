import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NoProducts extends StatelessWidget {
  const NoProducts({
    super.key,
    this.title = "You have no product",
    this.subTitle = "Tap the add icon, to add product to store.",
  });
  final String title;
  final String subTitle;
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
        TextWidget(
          textAlign: TextAlign.center,
          text: title,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        const SizedBox(
          height: 10,
        ),
        TextWidget(
          textAlign: TextAlign.center,
          text: subTitle,
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ],
    );
  }
}
