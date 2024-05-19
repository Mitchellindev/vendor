import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';

class StoreDetailsWidget extends StatelessWidget {
  const StoreDetailsWidget(
      {super.key, required this.header, required this.dataRows});
  final String header;
  final List<Widget> dataRows;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: header,
          fontSize: 21,
          fontWeight: FontWeight.w500,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: dataRows,
          ),
        )
      ],
    );
  }
}
