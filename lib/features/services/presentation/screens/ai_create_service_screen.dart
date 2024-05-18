import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../store/presentation/screens/illustration_widget.dart';
import '../../../store/presentation/widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class AiCreateServiceScreen extends StatelessWidget {
  const AiCreateServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 50),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    TextWidget(
                      text: "Say hello to Albert",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    IllustrationWidget(),
                    TextWidget(
                        textAlign: TextAlign.center,
                        fontSize: 18,
                        text:
                            "Ready to turn your dreams into a great service? Say hello to Albert our AI Assistant to help you create your first service package today!")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Column(
                    children: [
                      PrimaryButton(
                          label: "Enable Microphone",
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.prompAlbert,
                                arguments: true);
                          },
                          isEnabled: true),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          text: "OR",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      OutlinedButtonWidget(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.prompAlbert,
                              arguments: false);
                        },
                        label: "Use Prompt",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
