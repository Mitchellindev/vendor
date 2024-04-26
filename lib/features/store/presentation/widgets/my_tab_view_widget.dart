import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class MyTabViewWidget extends StatefulWidget {
  const MyTabViewWidget({super.key});

  @override
  State<MyTabViewWidget> createState() => _MyTabViewWidgetState();
}

class _MyTabViewWidgetState extends State<MyTabViewWidget> {
  Map<String, bool> choice = {
    "Product": true,
    "Category": false,
    "Description": false
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Product",
              onTap: () {
                setState(() {
                  choice["Product"] = true;
                  choice["Category"] = false;
                  choice["Description"] = false;
                });
              },
              fontWeight: FontWeight.w500,
              fontSize: 21,
              color: choice["Product"]!
                  ? Theme.of(context).colorScheme.primary
                  : const Color.fromARGB(70, 3, 14, 79),
            ),
            TextWidget(
              text: "Category",
              fontWeight: FontWeight.w500,
              fontSize: 21,
              onTap: () {
                setState(() {
                  choice["Product"] = false;
                  choice["Category"] = true;
                  choice["Description"] = false;
                });
              },
              color: choice["Category"]!
                  ? Theme.of(context).colorScheme.primary
                  : const Color.fromARGB(70, 3, 14, 79),
            ),
            TextWidget(
              text: "Description",
              fontWeight: FontWeight.w500,
              onTap: () {
                setState(() {
                  choice["Product"] = false;
                  choice["Category"] = false;
                  choice["Description"] = true;
                });
              },
              fontSize: 21,
              color: choice["Description"]!
                  ? Theme.of(context).colorScheme.primary
                  : const Color.fromARGB(70, 3, 14, 79),
            ),
          ],
        ),
        const SizedBox(
          height: 66,
        ),
        if (choice["Product"]!) const NoProductWidget(),
        if (choice["Category"]!)
          const NoProductWidget(), //TODO: Create Category Widget

        if (choice["Description"]!)
          const NoProductWidget() //TODO: Create Description Widget
      ],
    );
  }
}
