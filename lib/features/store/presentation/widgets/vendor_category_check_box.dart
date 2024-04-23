import 'package:broadcaadvendor/app/enums/enums.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class VendorCategoryCheckBox extends StatefulWidget {
  const VendorCategoryCheckBox(
      {super.key, required this.day, required this.label});
  final VendorCategory day;
  final String label;

  @override
  State<VendorCategoryCheckBox> createState() =>
      _CheckBoxContainerWidgetDayState();
}

class _CheckBoxContainerWidgetDayState extends State<VendorCategoryCheckBox> {
  bool? value = false;

  void onchanged(val) {
    if (widget.day.name == widget.label) {
      setState(() {
        value = val;
      });
    }
  }

  String capitalize({required String string}) {
    return string[0].toUpperCase() + string.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (value == true) {
          onchanged(false);
        } else {
          onchanged(widget.day.name == widget.label);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(10)),
        height: 48,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: !value!
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(
                    color: Color(0xffDDE2E5),
                  ),
                  shape: const RoundedRectangleBorder(),
                  value: value,
                  onChanged: onchanged,
                ),
                TextWidget(text: capitalize(string: widget.label)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
