import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget(
      {super.key,
      required this.iconPath,
      required this.label,
      this.imageWidth = 24,
      this.color = Colors.white,
      this.imageColor,
      required this.onTap});
  final String iconPath;
  final String label;
  final double imageWidth;
  final VoidCallback onTap;
  final Color color;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: imageWidth,
              color: imageColor,
            ),
            const SizedBox(
              width: 15,
            ),
            TextWidget(
              text: label,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
