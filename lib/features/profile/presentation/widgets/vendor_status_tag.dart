import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class VendorStatusTag extends StatelessWidget {
  const VendorStatusTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5).copyWith(left: 8, right: 8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(31, 3, 14, 79),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/verified_tag.png",
            width: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          const TextWidget(
            text: "Verified Vendor",
            fontSize: 12,
          )
        ],
      ),
    );
  }
}
