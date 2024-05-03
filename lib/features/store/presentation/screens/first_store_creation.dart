import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/create_store_button.dart';
import 'package:flutter/material.dart';

class FirstStoreCreationScreen extends StatefulWidget {
  const FirstStoreCreationScreen({super.key});

  @override
  State<FirstStoreCreationScreen> createState() =>
      _FirstStoreCreationScreenState();
}

class _FirstStoreCreationScreenState extends State<FirstStoreCreationScreen> {
  bool isFirstTapped = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/amico.png",
              ),
              const SizedBox(
                height: 70,
              ),
              TextWidget(
                text: "Create your First Store!",
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              CreateStoreOptionsButton(
                onTap: () {
                  setState(() {
                    isFirstTapped = true;
                  });
                },
                image: "assets/images/ai.png",
                label: "Ask Albert to create your store",
                isTapped: isFirstTapped,
              ),
              const SizedBox(
                height: 10,
              ),
              CreateStoreOptionsButton(
                onTap: () {
                  setState(() {
                    isFirstTapped = false;
                  });
                },
                image: "assets/images/document_add.png",
                label: "Create your store manually",
                isTapped: !isFirstTapped,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  label: "Get Started",
                  onPressed: () {
                    if (isFirstTapped) {
                      Navigator.pushNamed(context, Routes.aiCreateStore);
                    } else {
                      Navigator.pushNamed(context, Routes.storeCreationForm);
                    }
                  },
                  isEnabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
