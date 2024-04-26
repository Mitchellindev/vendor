import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TabItemWidget extends StatelessWidget {
  const TabItemWidget(
      {super.key,
      required this.onTap,
      required this.isChosen,
      required this.label});
  final VoidCallback onTap;
  final bool isChosen;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextWidget(
        text: label,
        onTap: onTap,
        fontWeight: FontWeight.w500,
        fontSize: 21,
        color: isChosen
            ? Theme.of(context).colorScheme.primary
            : const Color.fromARGB(70, 3, 14, 79),
      ),
    );
  }
}
