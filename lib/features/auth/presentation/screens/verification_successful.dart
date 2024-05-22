import 'package:flutter/material.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';

class VerificationSuccessfulScreen extends StatelessWidget {
  const VerificationSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/success.png",
                width: 100,
              ),
              const TextWidget(
                text: "Successful",
                fontSize: 38,
                fontWeight: FontWeight.w500,
              ),
              const TextWidget(
                text: "Your account has been created",
                fontSize: 21,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryButton(
                  label: "Proceed",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.storeFront);
                  },
                  isEnabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
