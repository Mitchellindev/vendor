import 'package:broadcaadvendor/features/products/presentation/widgets/no_products_widget.dart';
import 'package:broadcaadvendor/features/services/presentation/widgets/services_grid_view.dart';
import 'package:flutter/material.dart';

class PackagesTabView extends StatelessWidget {
  const PackagesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> packages = [
      1,
    ];
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: packages.isEmpty
          ? const NoProducts(
              title: "You have no service package",
              subTitle: "Tap the add icon, to add a package to service.",
            )
          : const ServicesGridView(),
    );
  }
}
