import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ShortPrimaryButton extends StatelessWidget {
  const ShortPrimaryButton({
    super.key,
    required this.onPressed,
    this.label = "Edit Store Profile",
  });
  final String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const SizedBox(),
      label: TextWidget(
        text: label,
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: Size(
              SizeConfig.getProportionateScreenWidth(
                  context: context, inputWidth: 200),
              48),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(
                  width: .5,
                  color: Color(0xff030E4F)) // Set border radius to 10
              ),
          backgroundColor: Theme.of(context).colorScheme.primary),
    );
  }
}
