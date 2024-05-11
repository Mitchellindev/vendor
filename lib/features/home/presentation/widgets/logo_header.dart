import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: const Offset(-4, 0),
          child: Image.asset(
            "assets/images/home_logo.png",
            width: 150,
          ),
        ),
      ],
    );
  }
}
