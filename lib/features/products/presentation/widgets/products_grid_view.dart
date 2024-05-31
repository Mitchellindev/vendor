import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import 'product_item_widget.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

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
          (index) => const ProductItemWidget(),
        ),
      ),
    );
  }
}
