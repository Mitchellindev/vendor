import '../../../../core/widgets/text_widget.dart';
import '../widgets/products_grid_view.dart';
import '../../../store/presentation/widgets/fab_row.dart';
import 'package:flutter/material.dart';

class CategoriesItemsScreen extends StatelessWidget {
  const CategoriesItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Men Clothing",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Stack(
          children: [
            const ProductsGridView(),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.75,
                right: 5,
                child: const FabRow())
          ],
        ),
      ),
    );
  }
}
