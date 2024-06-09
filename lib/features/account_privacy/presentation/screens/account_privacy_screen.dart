import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AccountPrivacyScreen extends StatefulWidget {
  const AccountPrivacyScreen({super.key});

  @override
  State<AccountPrivacyScreen> createState() => _AccountPrivacyScreenState();
}

class _AccountPrivacyScreenState extends State<AccountPrivacyScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Account Privacy",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Private Account',
                    fontWeight: FontWeight.w500,
                    fontSize: 18.width,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: .8,
                        child: Switch(
                          inactiveThumbColor:
                              Theme.of(context).colorScheme.secondary,
                          trackOutlineColor: isVisible
                              ? MaterialStatePropertyAll(
                                  Theme.of(context).colorScheme.primary)
                              : MaterialStatePropertyAll(
                                  Theme.of(context).colorScheme.secondary),
                          activeTrackColor:
                              Theme.of(context).colorScheme.primary,
                          value: isVisible,
                          onChanged: ((value) {
                            setState(() {
                              isVisible = value;
                            });
                          }),
                        ),
                      ),
                      TextWidget(
                        text: isVisible ? "On" : "Off",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.height),
              TextWidget(
                text:
                    'When making your account private, you have simply restricted access to its contents. Only approved users can interact with your contents.',
                fontWeight: FontWeight.w400,
                fontSize: 16.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
