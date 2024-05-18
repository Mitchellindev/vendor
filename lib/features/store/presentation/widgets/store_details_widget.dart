import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
        ...dataRows
      ],
    );
  }
}
