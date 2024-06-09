import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/payment_method/presentation/widgets/payment_method.dart';
import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> paymentMethods = [
      {
        "image": "assets/images/master_card.png",
        "label": "Mastercard",
        "onTap": () {
          Navigator.pushNamed(context, Routes.masterCard);
        }
      },
      {
        "image": "assets/images/visa.png",
        "label": "Visa",
        "onTap": () {
          Navigator.pushNamed(context, Routes.visa);
        }
      },
      {
        "image": "assets/images/master_card.png",
        "label": "Wallet",
        "onTap": () {}
      },
      {
        "image": "assets/images/master_card.png",
        "label": "Crypto",
        "onTap": () {}
      },
      {
        "image": "assets/images/master_card.png",
        "label": "ETC Pay",
        "onTap": () {}
      },
    ];
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Payment Methods",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: List.generate(
              paymentMethods.length,
              (index) => PaymentMethod(
                    onTap: paymentMethods[index]["onTap"],
                    image: paymentMethods[index]["image"],
                    label: paymentMethods[index]["label"],
                  )),
        ),
      ),
    );
  }
}
