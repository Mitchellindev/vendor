// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';
import '../../../store/presentation/widgets/rating_row.dart';

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/vendor_img.png",
                  width: 50,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Glam and Shine",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    TextWidget(
                      text: "14, January 2023 ",
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    RatingRow()
                  ],
                ),
              ],
            ),
            Image.asset(
              "assets/images/notification_active.png",
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
