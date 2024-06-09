import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/widgets/fund_wallet_option_widget.dart';
import 'package:flutter/material.dart';

class FundWalletScreen extends StatelessWidget {
  const FundWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Fund Wallet",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FundWalletOption(
                  optionText: 'Fund directly with your bank card',
                  option: 'Fund wiith card',
                  textColor: Theme.of(context).colorScheme.primary,
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.fundWithCard);
                  },
                ),
                SizedBox(height: 20.height),
                FundWalletOption(
                  optionText: 'Fund directly with your bank account',
                  option: 'Fund with bank account',
                  textColor: Theme.of(context).colorScheme.primary,
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.fundWithBank);
                  },
                ),
                SizedBox(height: 20.height),
                FundWalletOption(
                  opacity: .5,
                  textColor: Theme.of(context).colorScheme.primary,
                  optionText: 'Fund with USSD ',
                  option: 'Fund directly with your USSD',
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {},
                ),
                SizedBox(height: 20.height),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
