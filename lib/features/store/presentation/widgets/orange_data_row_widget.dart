import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class OrangeDataRow extends StatelessWidget {
  const OrangeDataRow({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: label,
            fontSize: 18,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: const Color(0xffF49F1C),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: TextWidget(
                text: value,
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
