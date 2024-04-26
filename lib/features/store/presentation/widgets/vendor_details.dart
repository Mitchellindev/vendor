import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class VendorDetails extends StatelessWidget {
  const VendorDetails({
    super.key,
    required this.icon,
    required this.label,
  });
  final String icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 24,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(
          width: 25,
        ),
        TextWidget(
          text: label,
          fontSize: 16,
        ),
      ],
    );
  }
}
