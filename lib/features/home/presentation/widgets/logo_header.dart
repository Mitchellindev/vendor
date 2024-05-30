import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.dashboard),
      child: Row(
        children: [
          Transform.translate(
            offset: const Offset(-4, 0),
            child: Image.asset(
              "assets/images/home_logo.png",
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
