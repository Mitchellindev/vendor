import 'package:broadcaadvendor/features/store/presentation/widgets/fab_icon_button.dart';
import 'package:flutter/material.dart';

class FabRow extends StatelessWidget {
  const FabRow({
    super.key,
  });

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
        const FabIconButton(
          borderRadius: 20,
          icon: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
