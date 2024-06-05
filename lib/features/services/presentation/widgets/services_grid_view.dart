import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import 'service_grid_item.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        childAspectRatio: 1 / 2.24,
        crossAxisCount: 2,
        mainAxisSpacing: 0.0.height,
        crossAxisSpacing: 25,
        children: List.generate(
          50,
          (index) => const ServiceGridItem(),
        ),
      ),
    );
  }
}
