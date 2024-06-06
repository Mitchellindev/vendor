import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/radio_choice_button_store_service.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 20.0.width),
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
              RadioChoiceButtonStoreService(
                  value: 1,
                  groupValue: _radioChoice,
                  onChanged: (p0) {
                    setState(() {
                      _radioChoice = 1;
                    });
                  },
                  image: "assets/images/ai_file.png",
                  label: "Create Store with Albert",
                  onTap: () {
                    setState(() {
                      _radioChoice = 1;
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _radioChoice = 1;
                  });
                },
                child: RadioChoiceButtonStoreService(
                    value: 2,
                    groupValue: _radioChoice,
                    image: "assets/images/note.png",
                    label: "Create your store manually",
                    onChanged: (p0) {
                      setState(() {
                        _radioChoice = 2;
                      });
                    },
                    onTap: () {
                      setState(() {
                        _radioChoice = 2;
                      });
                    }),
              ),
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
}
