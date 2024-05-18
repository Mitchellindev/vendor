import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NoBookedService extends StatelessWidget {
  const NoBookedService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cuate.png",
              width: 130,
            ),
            const TextWidget(
              text: "You have no booked service",
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(
              textAlign: TextAlign.center,
              text:
                  "Your upcoming and past appointment will appear when your service is booked",
              fontSize: 18,
            )
          ],
        ),
      ),
    );
  }
}
