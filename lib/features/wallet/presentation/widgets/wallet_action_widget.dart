import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class WalletActionWidget extends StatelessWidget {
  const WalletActionWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});
  final String icon;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 116,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(28, 3, 14, 79),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12.5,
        ),
        child: Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(59, 3, 14, 79),
            child: Image.asset(
              icon,
              width: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextWidget(
            text: label,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          )
        ]),
      ),
    );
  }
}
