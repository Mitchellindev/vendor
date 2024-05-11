import 'package:flutter/material.dart';

class FabIconButton extends StatelessWidget {
  const FabIconButton({
    super.key,
    required this.icon,
    this.borderRadius = 10,
  });
  final Widget icon;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(133, 3, 14, 79),
              blurRadius: 10.0,
              spreadRadius: 1.0,
              offset: Offset(-4.0, 5.0),
            )
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: icon,
    );
  }
}
