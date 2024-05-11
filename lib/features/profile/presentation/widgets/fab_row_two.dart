import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/fab_icon_button.dart';
import 'package:flutter/material.dart';

class FabRowTwo extends StatelessWidget {
  const FabRowTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FabIconButton(
          icon: Image.asset("assets/images/fab_chat.png"),
        ),
        const SizedBox(
          width: 20,
        ),
        FabIconButton(
          borderRadius: 20,
          icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.addProduct);
              },
              icon: Image.asset("assets/images/left_right.png")),
        ),
      ],
    );
  }
}