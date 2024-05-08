import 'package:broadcaadvendor/features/store/presentation/widgets/tab_item_widget.dart';
import 'package:flutter/material.dart';

class MyTabViewWidget extends StatefulWidget {
  const MyTabViewWidget(
      {super.key, required this.tabLabels, required this.body});
  final List<String> tabLabels;
  final List<Widget> body;
  @override
  State<MyTabViewWidget> createState() => _MyTabViewWidgetState();
}

class _MyTabViewWidgetState extends State<MyTabViewWidget> {
  int chosenTabItem = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  widget.tabLabels.length,
                  (index) => TabItemWidget(
                      label: widget.tabLabels[index],
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
        widget.body[chosenTabItem]
      ],
    );
  }
}
