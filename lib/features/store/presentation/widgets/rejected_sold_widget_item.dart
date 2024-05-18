import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RejectedSoldWidgetItem extends StatelessWidget {
  const RejectedSoldWidgetItem({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.trailing,
  });
  final String title;
  final String image;
  final String subtitle;

  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(14, 3, 14, 79),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                text: subtitle,
                fontSize: 14,
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            "assets/images/up_trend.png",
            width: 30,
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: trailing,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          )
        ],
      ),
    );
  }
}
