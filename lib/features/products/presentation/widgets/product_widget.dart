import 'package:broadcaadvendor/features/products/presentation/widgets/no_products_widget.dart';
import 'package:broadcaadvendor/features/products/presentation/widgets/products_grid_view.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});
  @override
  Widget build(BuildContext context) {
    bool hasProducts = true;

    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: hasProducts ? const ProductsGridView() : const NoProducts());
  }
}
