import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key, this.widget});
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 188,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/map.png'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
    );
  }
}
