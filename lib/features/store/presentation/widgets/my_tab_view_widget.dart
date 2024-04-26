import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/products/presentation/widgets/categories_widget.dart';
import 'package:broadcaadvendor/features/products/presentation/widgets/product_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/description.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/rating_row.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/reviews.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/tab_item_widget.dart';
import 'package:flutter/material.dart';

class MyTabViewWidget extends StatefulWidget {
  const MyTabViewWidget({super.key});

  @override
  State<MyTabViewWidget> createState() => _MyTabViewWidgetState();
}

class _MyTabViewWidgetState extends State<MyTabViewWidget> {
  int chosenTabItem = 0;

  List<Widget> pages = [
    const Products(),
    const CategoriesWidget(),
    const Description(),
    const Reviews()
  ];

  List<String> labels = ["Products", "Categories", "Description", "Reviews"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  labels.length,
                  (index) => TabItemWidget(
                      label: labels[index],
                      onTap: () {
                        setState(() {
                          chosenTabItem = index;
                        });
                      },
                      isChosen: chosenTabItem == index))),
        ),
        const SizedBox(
          height: 20,
        ),
        pages[chosenTabItem]
      ],
    );
  }
}
