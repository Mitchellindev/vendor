import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Service Package",
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/profile_pic.png",
                    width: 80,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Bridal Makeup",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      TextWidget(
                        text: "1hr",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const TextWidget(
                    text: "NGN 7,000",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
