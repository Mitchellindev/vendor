import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/home_logo.png",
          width: 150,
        ),
      ],
    );
  }
}
