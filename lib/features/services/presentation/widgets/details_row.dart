import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: "$title:",
          fontSize: 18,
        ),
        TextWidget(
          text: value,
          fontSize: 21,
          fontWeight: FontWeight.w500,
        )
      ],
    );
  }
}
