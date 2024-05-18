import '../../../../core/widgets/text_widget.dart';
import '../../../services/presentation/screens/service_item_widget.dart';
import 'package:flutter/material.dart';

class MyStoresScreen extends StatelessWidget {
  const MyStoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "My Stores",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
            children: List.generate(
          4,
          (index) => const ServiceItemWidget(),
        )),
      ),
    );
  }
}
