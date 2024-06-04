import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';

class FirstStoreCreationScreen extends StatefulWidget {
  const FirstStoreCreationScreen({super.key});

  @override
  State<FirstStoreCreationScreen> createState() =>
      _FirstStoreCreationScreenState();
}

class _FirstStoreCreationScreenState extends State<FirstStoreCreationScreen> {
  int _radioChoice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/amico.png",
              ),
              const Spacer(),
              TextWidget(
                text: "Create your First Store!",
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              _buildChoiceButton(context,
                  value: 1,
                  groupValue: _radioChoice,
                  onChanged: (p0) {
                    setState(() {
                      _radioChoice = 1;
                    });
                  },
                  image: "assets/images/ai_file.png",
                  label: "Create Store with Albert",
                  onTap: () => setState(() {
                        _radioChoice == 1;
                      })),
              const SizedBox(
                height: 20,
              ),
              _buildChoiceButton(context,
                  value: 2,
                  groupValue: _radioChoice,
                  image: "assets/images/note.png",
                  label: "Create your store manually",
                  onChanged: (p0) {
                    setState(() {
                      _radioChoice = 2;
                    });
                  },
                  onTap: () => setState(() {
                        _radioChoice == 2;
                      })),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  label: "Get Started",
                  onPressed: () {
                    if (_radioChoice == 1) {
                      Navigator.pushNamed(context, Routes.aiCreateStore);
                    } else {
                      Navigator.pushNamed(context, Routes.storeCreationForm);
                    }
                  },
                  isEnabled: true),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildChoiceButton(BuildContext context,
      {required String label,
      required VoidCallback onTap,
      required String image,
      required int value,
      required void Function(int?)? onChanged,
      required int groupValue}) {
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
    );
  }
}
