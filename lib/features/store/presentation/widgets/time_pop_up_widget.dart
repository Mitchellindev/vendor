import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class TimePopupWidget extends StatefulWidget {
  const TimePopupWidget({
    super.key,
    required this.isCancelled,
  });
  final VoidCallback isCancelled;
  @override
  State<TimePopupWidget> createState() => _TimePopupWidgetState();
}

class _TimePopupWidgetState extends State<TimePopupWidget> {
  late GlobalKey<FormFieldState> openingTimeKey;
  late GlobalKey<FormFieldState> closingTimeKey;
  String openingTime = "";
  String closingTime = "";

  @override
  void initState() {
    openingTimeKey = GlobalKey<FormFieldState>();
    closingTimeKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.white,
      content: Container(
        height: 346,
        width: 390,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputFieldWidget(
                enabledBorderRadius: 10,
                hintColor: Colors.transparent,
                label: "Opening Time",
                labelFontSize: 18,
                fontWeight: FontWeight.w500,
                hintText: "hintText",
                onChanged: (val) {
                  setState(() {
                    openingTime = val!;
                  });
                },
                textFieldkey: openingTimeKey),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: "${openingTime.length}/30",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InputFieldWidget(
                enabledBorderRadius: 10,
                hintColor: Colors.transparent,
                label: "Closing Time",
                labelFontSize: 18,
                fontWeight: FontWeight.w500,
                hintText: "hintText",
                onChanged: (val) {
                  setState(() {
                    closingTime = val!;
                  });
                },
                textFieldkey: closingTimeKey),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: "${closingTime.length}/30",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: "Cancel",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 30,
                ),
                TextWidget(
                  text: "Save",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
