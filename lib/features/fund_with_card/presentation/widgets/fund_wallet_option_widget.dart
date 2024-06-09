import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FundWalletOption extends StatelessWidget {
  const FundWalletOption({
    super.key,
    required this.optionText,
    required this.option,
    this.color,
    this.imageColor,
    required this.onTap,
    this.textColor,
    this.opacity,
  });
  final String optionText;
  final String option;
  final Color? color;
  final Color? imageColor;
  final VoidCallback onTap;
  final Color? textColor;
  final double? opacity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: opacity ?? 1,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color.fromRGBO(3, 14, 79, 0.2),
                child: Image.asset(
                  'assets/images/fund.png',
                  color: imageColor,
                  width: 24.width,
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: SizedBox(
                  width: 260.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: option,
                        fontSize: 18.width,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                      TextWidget(
                        text: optionText,
                        fontSize: 16.width,
                        fontWeight: FontWeight.w400,
                        color: textColor,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
