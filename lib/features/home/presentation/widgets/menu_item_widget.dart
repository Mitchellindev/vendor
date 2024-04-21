import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget(
      {super.key,
      required this.iconPath,
      required this.label,
      this.imageWidth = 24});
  final String iconPath;
  final String label;
  final double imageWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: imageWidth,
          ),
          const SizedBox(
            width: 15,
          ),
          TextWidget(
            text: label,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
