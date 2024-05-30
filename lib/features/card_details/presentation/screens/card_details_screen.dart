import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/core/widgets/white_popup.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({super.key});

  @override
  State<CardDetailsScreen> createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  late GlobalKey<FormFieldState> holderNameKey;
  late GlobalKey<FormFieldState> cardNumberKey;
  late GlobalKey<FormFieldState> cvvKey;
  late GlobalKey<FormFieldState> expirationDateKey;

  bool holderNameIsValid = false;
  bool cardNumberIsValid = false;
  bool cvvIsValid = false;
  bool expirationDateIsValid = false;
  bool? rememberCard = false;
  @override
  void initState() {
    holderNameKey = GlobalKey<FormFieldState>();
    cardNumberKey = GlobalKey<FormFieldState>();
    cvvKey = GlobalKey<FormFieldState>();
    expirationDateKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Add Debit/ Credit Cards",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // const Amount(amount: 'NGN 15,000'),
              InputFieldWidget(
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Credit Holder Name",
                onChanged: (val) {
                  setState(() {
                    holderNameIsValid = holderNameKey.currentState!.validate();
                  });
                },
                textFieldkey: holderNameKey,
              ),
              InputFieldWidget(
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Credit Card Number",
                onChanged: (val) {
                  setState(() {
                    cardNumberIsValid = cardNumberKey.currentState!.validate();
                  });
                },
                textFieldkey: cardNumberKey,
              ),
              InputFieldWidget(
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "CVV",
                onChanged: (val) {
                  setState(() {
                    cvvIsValid = cvvKey.currentState!.validate();
                  });
                },
                textFieldkey: cvvKey,
              ),
              InputFieldWidget(
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Expiration Date",
                onChanged: (val) {
                  setState(() {
                    expirationDateIsValid =
                        expirationDateKey.currentState!.validate();
                  });
                },
                textFieldkey: expirationDateKey,
              ),
              const SizedBox(height: 0),

              const Spacer(),
              Opacity(
                opacity: holderNameIsValid &&
                        cvvIsValid &&
                        expirationDateIsValid &&
                        cardNumberIsValid
                    ? 1
                    : .5,
                child: PrimaryButton(
                  label: 'Save',
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    //     context, Routes.fundingSuccessFailure);
                  },
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

void cardDetailsLoading(context) {
  showWhitePopup(
      context: context,
      widget: Container(
        padding: const EdgeInsets.symmetric(vertical: 50),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  color: Color(0xff030E4F),
                  backgroundColor: Color.fromARGB(83, 3, 14, 79),
                  strokeWidth: 5,
                )),
            SizedBox(
              height: 30,
            ),
            TextWidget(
              text: "Confirming Funding",
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
              textAlign: TextAlign.center,
              text: "Please wait while we confirm funding",
              fontSize: 18,
            )
          ],
        ),
      ));
}
