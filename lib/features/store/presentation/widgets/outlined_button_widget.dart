import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({
    super.key,
    required this.label,
    required this.onTap,
    this.color = const Color(0xff030E4F),
  });
  final String label;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        margin: const EdgeInsets.only(bottom: 0),
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: .5,
            color: const Color(0xff030E4F),
          ),
        ),
        child: Center(
          child: TextWidget(
            text: label,
            fontSize: 16,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
