import '../../../../app/enums/enums.dart';
import '../../../../core/widgets/text_widget.dart';
import 'time_pop_up_widget.dart';
import 'package:flutter/material.dart';

class CheckBoxContainerWidgetDay extends StatefulWidget {
  const CheckBoxContainerWidgetDay(
      {super.key, required this.day, required this.label});
  final ServiceSchedule day;
  final String label;

  @override
  State<CheckBoxContainerWidgetDay> createState() =>
      _CheckBoxContainerWidgetDayState();
}

class _CheckBoxContainerWidgetDayState
    extends State<CheckBoxContainerWidgetDay> {
  bool? value = false;

  void onchanged(val) {
    if (widget.day.name == widget.label) {
      if (value == false) {
        showDialog(
            context: context,
            builder: (context) {
              return TimePopupWidget(
                isCancelled: () {},
              );
            });
      }
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
            if (!value!)
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextWidget(
                  text: "Closed",
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
