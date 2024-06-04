import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DetailsGridBlock extends StatelessWidget {
  const DetailsGridBlock({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF030E4F), Color(0xFF0720B5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            fontStyle: FontStyle.italic,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            text: label,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Flexible(
            child: TextWidget(
              text: value,
              fontSize: 18,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          )
        ],
      ),
    );
  }
}
