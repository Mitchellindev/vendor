import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ATMCardWidget extends StatelessWidget {
  const ATMCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: 208,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextWidget(
              text: "...8434",
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
          ]),
          TextWidget(
            text: "NGN 15,0000.OO",
            fontWeight: FontWeight.w500,
            fontSize: 28,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            TextWidget(
              text: "Sanni Kayinsola",
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
          ]),
        ],
      ),
    );
  }
}
