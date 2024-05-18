import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class StockCounter extends StatelessWidget {
  const StockCounter(
      {super.key,
      required this.onPressedRemove,
      required this.onPressedAdd,
      required this.value});
  final VoidCallback onPressedRemove;
  final VoidCallback onPressedAdd;
  final int value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.primary, width: 0.5),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: "Available Stock",
            fontSize: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: onPressedRemove,
                child: const Icon(
                  Icons.remove,
                  size: 30,
                ),
              ),
              Container(
                width: 80,
                padding: const EdgeInsets.symmetric(vertical: 7),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: TextWidget(
                  textAlign: TextAlign.center,
                  text: value.toString(),
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              GestureDetector(
                  onTap: onPressedAdd,
                  child: const Icon(
                    Icons.add,
                    size: 30,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
