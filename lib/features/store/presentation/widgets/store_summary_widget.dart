import 'package:broadcaadvendor/features/store/presentation/widgets/fab_row.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/scrollable_body.dart';
import 'package:flutter/material.dart';

class StoreSummary extends StatefulWidget {
  const StoreSummary({super.key});

  @override
  State<StoreSummary> createState() => _StoreSummaryState();
}

class _StoreSummaryState extends State<StoreSummary> {
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollableBody(controller: controller),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.75,
            right: 5,
            child: const FabRow())
      ],
    );
  }
}
