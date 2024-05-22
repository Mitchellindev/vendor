import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';
import 'service_item_widget.dart';

class MyServicesScreen extends StatelessWidget {
  const MyServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "My Services",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
            children: List.generate(
          4,
          (index) => ServiceItemWidget(
            onTap: () {},
          ),
        )),
      ),
    );
  }
}
