import 'package:flutter/material.dart';

import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/atm_card_widget.dart';
import '../widgets/transaction_history.dart';
import '../widgets/wallet_actions.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: Transform.translate(
          offset: const Offset(-10, 0),
          child: const TextWidget(
            text: "My Wallet",
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
          children: [
            const ATMCardWidget(),
            const WalletActions(),
            TransactionHistory(
              seeAllAction: () {
                Navigator.pushNamed(context, Routes.allTransactons);
              },
            )
          ],
        ),
      ),
    );
  }
}
