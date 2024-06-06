import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RadioChoiceButtonStoreService extends StatelessWidget {
  const RadioChoiceButtonStoreService(
      {super.key,
      required this.label,
      required this.onTap,
      required this.image,
      required this.value,
      this.onChanged,
      required this.groupValue});
  final String label;
  final VoidCallback onTap;
  final String image;
  final int value;
  final void Function(int?)? onChanged;
  final int groupValue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(),
        decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: groupValue != value ? 1 : 2),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20.width,
                ),
                Radio<int>(
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
                SizedBox(
                  width: 3.width,
                ),
                Transform.translate(
                  offset: const Offset(-5, 0),
                  child: Image.asset(
                    image,
                    width: 20.width,
                  ),
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
