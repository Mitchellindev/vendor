import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffF49F1C),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffF49F1C),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffF49F1C),
        ),
        Icon(
          Icons.star_outline,
          color: Theme.of(context).colorScheme.primary,
        ),
        Icon(
          Icons.star_outline,
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
