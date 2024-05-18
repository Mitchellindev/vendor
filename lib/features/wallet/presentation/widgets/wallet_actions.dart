import 'wallet_action_widget.dart';
import 'package:flutter/material.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            actions.length,
            (index) => WalletActionWidget(
                  icon: actions[index]["icon"],
                  label: actions[index]["label"],
                  onTap: actions[index]["onTap"],
                )),
      ),
    );
  }
}
