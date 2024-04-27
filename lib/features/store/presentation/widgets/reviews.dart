import 'package:broadcaadvendor/core/widgets/horizontal_divider.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/reviews_heading.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ReviewsHeading(),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: List.generate(5, (index) => const RatingItem()),
        )
      ],
    );
  }
}

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(children: [
        Row(children: [
          Image.asset(
            "assets/images/reviewer.png",
            width: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text: "Verified Buyer",
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      4,
                      (index) => const Icon(
                        Icons.star,
                        color: Color(0xffF49F1C),
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const TextWidget(
                    text: "4.4",
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  )
                ],
              )
            ],
          )
        ]),
        const SizedBox(
          height: 20,
        ),
        const TextWidget(
            fontSize: 18,
            text:
                "I recently shopped from omega stores, particularly the men’s category ,i was undeniably impressed. The selection of clothing was diverse and stylish, catering to my taste. The store ambiance was inviting, making the shopping enjoyable"),
        const HorizontalDivider(
          paddingVertical: 20,
        )
      ]),
    );
  }
}
