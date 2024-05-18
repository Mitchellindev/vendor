import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
              Image.asset("assets/images/product.png"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(text: "Fashion Men Long sleeves"),
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
        const SizedBox(
          height: 20,
        ),
        PrimaryButton(
            label: "Edit Package",
            onPressed: () {
              // Navigator.pushNamed(context, Routes.editProduct);
            },
            isEnabled: true)
      ],
    );
  }
}
