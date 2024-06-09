import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/constants/app_colors.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/validator/validator.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/widgets/amount_widget.dart';
import 'package:flutter/material.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({super.key});

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  late GlobalKey<FormFieldState> preferredBankKey;
  late GlobalKey<FormFieldState> bankAccountKey;
  late GlobalKey<FormFieldState> bvnKey;

  bool preferredBankIsValid = false;
  bool bankAccountIsValid = false;
  bool bvnIsValid = false;

  @override
  void initState() {
    preferredBankKey = GlobalKey<FormFieldState>();
    bankAccountKey = GlobalKey<FormFieldState>();
    bvnKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          text: 'Fund With Bank Account',
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Amount(amount: 'NGN 15,000'),
              const Spacer(),
              InputFieldWidget(
                validator: (p0) {
                  final preferredBankState = Validator.validateEmail(
                      preferredBankKey.currentState?.value);
                  return preferredBankState;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Preferred Bank",
                onChanged: (val) {
                  setState(() {
                    preferredBankIsValid =
                        preferredBankKey.currentState!.validate();
                  });
                },
                textFieldkey: preferredBankKey,
              ),
              const SizedBox(height: 10),
              InputFieldWidget(
                validator: (p0) {
                  final bankAccountState = Validator.validateEmail(
                      preferredBankKey.currentState?.value);
                  return bankAccountState;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Bank account",
                onChanged: (val) {
                  setState(() {
                    bankAccountIsValid =
                        bankAccountKey.currentState!.validate();
                  });
                },
                textFieldkey: bankAccountKey,
              ),
              const SizedBox(height: 10),
              InputFieldWidget(
                validator: (p0) {
                  final bvnState = Validator.validateEmail(
                      preferredBankKey.currentState?.value);
                  return bvnState;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "BVN",
                onChanged: (val) {
                  setState(() {
                    bvnIsValid = bvnKey.currentState!.validate();
                  });
                },
                textFieldkey: bvnKey,
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              Opacity(
                opacity: 1,
                child: PrimaryButton(
                  label: 'Next',
                  onPressed: () {},
                  isEnabled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
