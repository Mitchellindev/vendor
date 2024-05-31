import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';

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
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(28, 3, 14, 79),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12.5,
          ),
          child: Column(children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromARGB(59, 3, 14, 79),
              child: Image.asset(
                icon,
                width: 24.height,
              ),
            ),
            SizedBox(
              height: 15.height,
            ),
            TextWidget(
              text: label,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            )
          ]),
        ),
      ),
    );
  }
}
