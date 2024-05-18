import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                fontSize: 12,
                text: "View",
                color: Colors.white,
              ),
              TextWidget(
                fontSize: 12,
                text: " Data Protection",
                color: Color(0xffF49F1C),
              ),
              TextWidget(
                fontSize: 12,
                text: " and ",
                color: Color(0xffF49F1C),
              ),
            ],
          ),
          TextWidget(
            text: "Privacy Policy",
            fontSize: 12,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
