import 'package:flutter/material.dart';

class CoverImageStack extends StatelessWidget {
  const CoverImageStack({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 170,
          width: double.infinity,
          child: PageView(
              controller: controller,
              padEnds: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                3,
                (index) => Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 0.5,
                      color: const Color.fromRGBO(3, 14, 79, 1),
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/cover_image.png'), // Replace with your image path
                      fit: BoxFit
                          .cover, // Adjust fit as needed (cover, contain, etc.)
                    ),
                  ),
                ),
              )),
        ),
        Positioned(
          bottom: -50,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                    'assets/images/cover_image.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.5,
                color: const Color.fromRGBO(3, 14, 79, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
