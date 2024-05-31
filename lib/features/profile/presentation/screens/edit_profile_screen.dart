import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../config/router/routes.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/horizontal_divider.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/profile_action_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  bool appNotificationEnabled = false;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        "icon": "assets/images/user.png",
        "label": "Sanni Kayinsola",
        "trailing": Image.asset(
          "assets/images/profile_edit.png",
          width: 20,
        ),
        "onTap": () {
          Navigator.pushNamed(context, Routes.updateUsernameAndProfileImage);
        }
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.updateUserPhoneNumber);
        },
        "icon": "assets/images/phone.png",
        "label": "+2349014138731",
        "trailing": Image.asset(
          "assets/images/profile_edit.png",
          width: 20,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.updateAddress);
        },
        "icon": "assets/images/location.png",
        "label": "Ikoyi, Lagos state",
        "trailing": Image.asset(
          "assets/images/profile_edit.png",
          width: 20,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.updateEmailAddress);
        },
        "icon": "assets/images/chat.png",
        "label": "sannikayinsola@gmail,com",
        "trailing": Image.asset(
          "assets/images/profile_edit.png",
          width: 20,
        )
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.secondary,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextWidget(
          text: "Vendor Details",
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            height: SizeConfig.getProportionateScreenHeight(
                context: context, inputHeight: 700.height),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/images/vendor_img.png",
                      width: 60,
                    ),
                    const SizedBox(
                      width: 20,
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
                            text: "Vendor",
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const HorizontalDivider(),
                Column(
                  children: List.generate(
                    items.length,
                    (index) => ProfileActionWidget(
                      icon: items[index]["icon"],
                      label: items[index]["label"],
                      trailing: items[index]["trailing"],
                      onTap: items[index]["onTap"],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
