import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileActionWidget extends StatelessWidget {
  const ProfileActionWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.trailing,
      required this.onTap});
  final String icon;
  final String label;
  final Widget trailing;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  icon,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                TextWidget(
                  text: label,
                  fontSize: 20,
                ),
              ],
            ),
            trailing
          ],
        ),
      ),
    );
  }
}
