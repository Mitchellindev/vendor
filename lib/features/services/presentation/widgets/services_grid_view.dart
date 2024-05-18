import 'service_grid_item.dart';
import 'package:flutter/material.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        childAspectRatio: 1 / 2.1,
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 7.5,
        children: List.generate(
          50,
          (index) => const ServiceGridItem(),
        ),
      ),
    );
  }
}
