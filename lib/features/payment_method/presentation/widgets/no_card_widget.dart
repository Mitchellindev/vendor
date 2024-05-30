import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NoCardRegisteredWidget extends StatelessWidget {
  const NoCardRegisteredWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cuate.png",
              width: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
              text: "You have no card",
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
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
            )
          ],
        ),
      ),
    );
  }
}
