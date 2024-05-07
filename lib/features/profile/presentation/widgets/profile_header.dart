import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/profile/presentation/screens/vendor_profile.dart';
import 'package:broadcaadvendor/features/profile/presentation/widgets/vendor_status_tag.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/vendor_img.png",
          width: 100,
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: "Omega Stores",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              width: SizeConfig.getProportionateScreenWidth(
                  context: context, inputWidth: 200),
              child: TextWidget(
                text: "O23, Palm Avenue, Isolo, Lagos state",
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            TextWidget(
              text: "+234 812 3456 789",
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 5,
            ),
            const VendorStatusTag()
          ],
        )
      ],
    );
  }
}
