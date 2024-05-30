import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SettingsActionWidget extends StatelessWidget {
  const SettingsActionWidget(
      {super.key, required this.label, required this.onTap, this.currentValue});

  final String label;
  final VoidCallback onTap;
  final String? currentValue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                TextWidget(
                  text: label,
                  fontSize: 18,
                ),
              ],
            ),
            const Spacer(),
            if (currentValue != null)
              TextWidget(
                text: currentValue!,
                fontSize: 16,
              ),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}
