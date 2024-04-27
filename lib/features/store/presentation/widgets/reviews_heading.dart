import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/rating_row.dart';
import 'package:flutter/material.dart';

class ReviewsHeading extends StatelessWidget {
  const ReviewsHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextWidget(
          text: "4.6",
          fontWeight: FontWeight.w600,
          fontSize: 31,
        ),
        TextWidget(
          text: "1,867 Reviews",
          fontWeight: FontWeight.w400,
          fontSize: 21,
        ),
        RatingRow()
      ],
    );
  }
}
