import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/payment_method/presentation/widgets/card_widget.dart';
import 'package:broadcaadvendor/features/payment_method/presentation/widgets/no_card_widget.dart';
import 'package:flutter/material.dart';

class VisaScreen extends StatelessWidget {
  const VisaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cards = [
      {
        "cardType": "Visa",
        "cardTypeImage": "assets/images/visa.png",
        "cvv": "***",
        "cardNumber": "5000 0000 0000 0000",
        "exDate": "12/23",
        "cardHolder": "Sanni Kayosinla"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Visa",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: cards.isEmpty
          ? const NoCardRegisteredWidget()
          : Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .30,
                  child: ListView(
                    children: List.generate(
                      cards.length,
                      (index) => BankCardWidget(
                        cardType: cards[index]["cardType"],
                        cardTypeImage: cards[index]["cardTypeImage"],
                        cardNumber: cards[index]["cardNumber"],
                        cvv: cards[index]["cvv"],
                        cardHolder: cards[index]["cardHolder"],
                        exDate: cards[index]["exDate"],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.cardDetails);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                          size: 24,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const TextWidget(text: "Add a debit/credit card")
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.cardDetails);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: "Delete",
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
