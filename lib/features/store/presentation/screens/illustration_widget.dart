import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class IllustrationWidget extends StatelessWidget {
  const IllustrationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            "assets/images/albert_shadow_bg.png",
            width: SizeConfig.getProportionateScreenWidth(
                context: context, inputWidth: 600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Image.asset(
              "assets/images/albert.png",
              width: SizeConfig.getProportionateScreenWidth(
                  context: context, inputWidth: 170),
            ),
          ),
        ],
      ),
    );
  }
}
