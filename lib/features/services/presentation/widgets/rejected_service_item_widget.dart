import '../../../../app/enums/enums.dart';
import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RejectedCompletedServiceItemWidget extends StatelessWidget {
  const RejectedCompletedServiceItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.trend,
    required this.amount,
    required this.status,
  });
  final String title;
  final String image;
  final String subtitle;
  final Trend trend;
  final int amount;
  final ServiceTrend status;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Image.asset(
              trend == Trend.up
                  ? "assets/images/up_trend.png"
                  : "assets/images/down_trend.png",
              width: 30,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "NGN +$amount",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                text: status == ServiceTrend.completed
                    ? "Completed"
                    : status == ServiceTrend.rejected
                        ? "Rejected"
                        : "--------",
                fontSize: 14,
              )
            ],
          )
        ],
      ),
    );
  }
}
