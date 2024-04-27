import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.categoryItems);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 0.5, color: Theme.of(context).colorScheme.primary),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Men's Clothing",
                  fontSize: 18,
                ),
                TextWidget(
                  text: "50 Items",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
