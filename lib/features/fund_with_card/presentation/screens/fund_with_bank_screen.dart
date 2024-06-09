import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/validator/validator.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class FundWithBankScreen extends StatefulWidget {
  const FundWithBankScreen({super.key});

  @override
  State<FundWithBankScreen> createState() => _FundWithBankScreenState();
}

class _FundWithBankScreenState extends State<FundWithBankScreen> {
  late GlobalKey<FormFieldState> amountKey;
  bool amountIsValid = false;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Fund With Bank Account",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputFieldWidget(
                    validator: (p0) {
                      final amountState = Validator.validateText(
                          amountKey.currentState?.value, "Full Name");
                      return amountState;
                    },
                    enabledBorderRadius: 5,
                    hintColor: const Color.fromARGB(120, 58, 58, 58),
                    hintSize: 18,
                    hintText: "Amount",
                    onChanged: (val) {
                      setState(() {
                        amountIsValid = amountKey.currentState!.validate();
                      });
                    },
                    textFieldkey: amountKey,
                  ),
                  const SizedBox(height: 20),
                  TextWidget(
                    text: 'Add 100.00-9,999.00',
                    fontSize: 16.width,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
              Opacity(
                opacity: amountIsValid ? 1 : .5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: PrimaryButton(
                    label: 'Next',
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.bankDetails);
                    },
                    isEnabled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
