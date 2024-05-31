import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import 'wallet_action_widget.dart';

class WalletActions extends StatelessWidget {
  const WalletActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> actions = [
      {"icon": "assets/images/withdraw.png", "label": "Fund", "onTap": () {}},
      {"icon": "assets/images/fund.png", "label": "Withdraw", "onTap": () {}},
      {"icon": "assets/images/request.png", "label": "Request", "onTap": () {}}
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        WalletActionWidget(
            icon: actions[0]["icon"],
            label: actions[0]["label"],
            onTap: actions[0]["onTap"]),
        SizedBox(
          width: 20.width,
        ),
        WalletActionWidget(
            icon: actions[1]["icon"],
            label: actions[1]["label"],
            onTap: actions[1]["onTap"]),
        SizedBox(
          width: 20.width,
        ),
        WalletActionWidget(
            icon: actions[2]["icon"],
            label: actions[2]["label"],
            onTap: actions[2]["onTap"]),
      ]),
    );
  }
}
