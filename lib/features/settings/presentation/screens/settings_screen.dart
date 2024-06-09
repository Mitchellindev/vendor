import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/horizontal_divider.dart';
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
      {
        "label": "Navigation Preference",
        "onTap": () {
          Navigator.pushNamed(context, Routes.navigationPreference);
        }
      },
      {
        "label": "Account Security",
        "onTap": () {
          Navigator.pushNamed(context, Routes.accountSettings);
        }
      },
      {},
      {
        "label": "Language",
        "onTap": () {
          Navigator.pushNamed(context, Routes.selectLanguage);
        },
        "currentValue": "English"
      },
      {
        "label": "Country",
        "onTap": () {
          Navigator.pushNamed(context, Routes.selectCountry);
        },
        "currentValue": "Nigeria"
      },
      {
        "label": "Currency",
        "onTap": () {
          Navigator.pushNamed(context, Routes.selectCurrency);
        },
        "currentValue": "NGN"
      },
      {
        "label": "Account Privacy",
        "onTap": () {
          Navigator.pushNamed(context, Routes.accountPrivacy);
        }
      },
      {
        "label": "Delete Account",
        "onTap": () {
          Navigator.pushNamed(context, Routes.deleteAccount);
        }
      },
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
        padding: EdgeInsets.symmetric(vertical: 20.width),
        child: Column(
          children: List.generate(actions.length, (index) {
            if (index == 3) {
              return const HorizontalDivider(
                paddingVertical: 0,
              );
            }
            if (index == 4 || index == 5 || index == 6) {
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
