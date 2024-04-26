import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.isEnabled,
      this.backgroundColor = const Color(0xff030E4F),
      this.labelColor = Colors.white,
      this.icon = const TextWidget(text: ""),
      this.fontWeight = FontWeight.w600});
  final String label;
  final VoidCallback onPressed;
  final bool isEnabled;
  final Widget icon;
  final Color backgroundColor;
  final Color labelColor;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      label: TextWidget(
        text: label,
        color: labelColor,
        fontSize: 18,
        fontWeight: fontWeight,
      ),
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
                width: .5, color: Color(0xff030E4F)) // Set border radius to 10
            ),
        backgroundColor: isEnabled
            ? backgroundColor
            : Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
