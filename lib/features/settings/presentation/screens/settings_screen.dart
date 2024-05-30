import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/settings/presentation/widgets/settings_actions_widgets.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> actions = [
      {
        "label": "Payment Methods",
        "onTap": () {
          Navigator.pushNamed(context, Routes.paymentMethods);
        }
      },
      {"label": "Navigation Preference", "onTap": () {}},
      {"label": "Account Security", "onTap": () {}},
      {"label": "Language", "onTap": () {}, "currentValue": "English"},
      {"label": "Country", "onTap": () {}, "currentValue": "Nigeria"},
      {"label": "Currency", "onTap": () {}, "currentValue": "NGN"},
      {"label": "Account Privacy", "onTap": () {}},
      {"label": "Delete Account", "onTap": () {}},
    ];
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Settings",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: List.generate(actions.length, (index) {
            if (index == 3 || index == 4 || index == 5) {
              return SettingsActionWidget(
                label: actions[index]["label"],
                onTap: actions[index]["onTap"],
                currentValue: actions[index]["currentValue"],
              );
            } else {
              return SettingsActionWidget(
                label: actions[index]["label"],
                onTap: actions[index]["onTap"],
              );
            }
          }),
        ),
      ),
    );
  }
}
