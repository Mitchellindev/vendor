import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CreateStoreOptionsButton extends StatelessWidget {
  const CreateStoreOptionsButton(
      {super.key, required this.image, required this.label});
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      margin: const EdgeInsets.only(bottom: 0),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: .5,
          color: const Color(0xff030E4F),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 24,
          ),
          const SizedBox(
            width: 18,
          ),
          TextWidget(
            text: label,
            fontSize: 16,
            color: const Color(0xff030E4F),
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
