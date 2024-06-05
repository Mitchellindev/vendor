import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget(
      {super.key,
      required this.onTap,
      required this.groupValue,
      required this.value,
      this.onChanged,
      required this.label});
  final VoidCallback onTap;
  final int groupValue;
  final int value;
  final void Function(int?)? onChanged;

  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: groupValue != value ? 1 : 2),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio<int>(
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
                const SizedBox(
                  width: 3,
                ),
                TextWidget(
                  text: label,
                  fontSize: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
