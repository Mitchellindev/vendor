import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';
import '../../../../core/widgets/white_popup.dart';
import '../../../store/presentation/widgets/fab_icon_button.dart';

class FabRowTwo extends StatelessWidget {
  const FabRowTwo({super.key});

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
          onTap: () {},
          borderRadius: 20,
          icon: IconButton(
              onPressed: () {
                showWhitePopup(
                  context: context,
                  widget: Container(
                    height: 150.height,
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 390.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Switch to User",
                          fontSize: 20,
                          onTap: () {},
                        ),
                        TextWidget(
                          text: "Switch to Vendor",
                          onTap: () {},
                          fontSize: 20,
                        ),
                        TextWidget(
                          text: "Switch to Faciliatator",
                          onTap: () {},
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                );
              },
              icon: Image.asset("assets/images/left_right.png")),
        ),
      ],
    );
  }
}
