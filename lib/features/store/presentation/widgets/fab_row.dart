import 'package:flutter/material.dart';

import '../../../../config/router/routes.dart';
import 'fab_icon_button.dart';

class FabRow extends StatelessWidget {
  const FabRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FabIconButton(
          onTap: () {},
          icon: Image.asset("assets/images/fab_chat.png"),
        ),
        const SizedBox(
          width: 20,
        ),
        FabIconButton(
          onTap: () {
            Navigator.pushNamed(context, Routes.addProduct);
          },
          borderRadius: 15,
          icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              "assets/images/plus.png",
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}
