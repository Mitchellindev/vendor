import 'package:broadcaadvendor/core/constants/app_colors.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Select Language",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'English',
                    fontWeight: FontWeight.w400,
                    fontSize: 21.width,
                    color: AppColors.primary,
                  ),
                  Image.asset('assets/images/check-circle.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
