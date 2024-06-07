import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';

class OutlinedIconButtonWidget extends StatelessWidget {
  const OutlinedIconButtonWidget(
      {super.key,
      required this.image,
      required this.label,
      required this.onTap,
      required this.isTapped});
  final String image;
  final String label;
  final bool isTapped;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        margin: const EdgeInsets.only(bottom: 0),
        width: double.infinity,
        height: 48.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: isTapped ? 2 : .5,
            color: const Color(0xff030E4F),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 24,
            ),
            const SizedBox(
              width: 18,
            ),
            TextWidget(
              text: label,
              fontSize: 15,
              color: const Color(0xff030E4F),
              fontWeight: isTapped ? FontWeight.w500 : FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
