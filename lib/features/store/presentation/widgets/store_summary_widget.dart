import 'package:flutter/material.dart';

import 'fab_row.dart';
import 'scrollable_body.dart';

class StoreSummary extends StatefulWidget {
  const StoreSummary({super.key});

  @override
  State<StoreSummary> createState() => _StoreSummaryState();
}

class _StoreSummaryState extends State<StoreSummary> {
  PageController controller =
      PageController(viewportFraction: .9, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollableBody(controller: controller),
        Positioned(
            bottom: MediaQuery.of(context).size.height * .22,
            right: 5,
            child: const FabRow())
      ],
    );
  }
}
