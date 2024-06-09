import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatelessWidget {
  const CheckBoxListTileWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: const EdgeInsets.all(0),
      value: true,
      onChanged: (val) {},
      title: TextWidget(
        text: title,
        fontWeight: FontWeight.w400,
        fontSize: 18.width,
      ),
    );
  }
}
