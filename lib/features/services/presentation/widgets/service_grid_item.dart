import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';

class ServiceGridItem extends StatelessWidget {
  const ServiceGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffEEF0F2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset("assets/images/makeup_service.png"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(text: "Bridal Makeup"),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: "NGN 8,700",
                      textAlign: TextAlign.start,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: "1hr",
                      textAlign: TextAlign.start,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.height,
        ),
        PrimaryButton(
            label: "Edit Package",
            labelFontSize: 15,
            onPressed: () {
              Navigator.pushNamed(context, Routes.editPackage);
            },
            isEnabled: true)
      ],
    );
  }
}
