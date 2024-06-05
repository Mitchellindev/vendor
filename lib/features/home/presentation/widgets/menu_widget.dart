import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/core/widgets/white_popup.dart';
import 'package:flutter/material.dart';

import '../../../../config/router/routes.dart';
import 'menu_item_widget.dart';
import 'notification_menu_item.dart';
import 'privacy_policy_widget.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.width,
      color: Theme.of(context).colorScheme.primary,
      child: SafeArea(
        child: Column(
          children: [
            // SizedBox(
            //   height: 70.height,
            // ),
            Image.asset(
              "assets/images/splash_image.png",
              width: 150.width,
            ),
            SizedBox(
              height: 35.height,
            ),
            const NotificationMenuItem(),
            MenuItemWidget(
                onTap: () {
                  Navigator.pushNamed(context, Routes.dashboard);
                },
                iconPath: "assets/images/settings.png",
                imageColor: Colors.white,
                label: "Dashboard"),
            MenuItemWidget(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.myWallet);
                },
                iconPath: "assets/images/chat_menu_item.png",
                label: "My Wallet"),
            MenuItemWidget(
                onTap: () {},
                iconPath: "assets/images/chat_menu_item.png",
                label: "My Chat"),
            MenuItemWidget(
                onTap: () {
                  Navigator.pushNamed(context, Routes.profile);
                },
                iconPath: "assets/images/profile.png",
                imageWidth: 22.width,
                label: "My Profile"),
            MenuItemWidget(
                onTap: () {},
                iconPath: "assets/images/cart.png",
                imageWidth: 28.width,
                label: "My Orders"),
            MenuItemWidget(
                onTap: () {},
                iconPath: "assets/images/clock.png",
                label: "Pending Items"),
            MenuItemWidget(
                onTap: () {},
                iconPath: "assets/images/chart.png",
                label: "My Store Analytics"),
            MenuItemWidget(
                onTap: () {
                  Navigator.pushNamed(context, Routes.settings);
                },
                iconPath: "assets/images/settings.png",
                imageColor: Colors.white,
                label: "Settings"),
            MenuItemWidget(
              onTap: () {
                Navigator.pushNamed(context, Routes.customerSupport);
              },
              iconPath: "assets/images/settings.png",
              imageColor: Colors.white,
              label: "Customer Support",
            ),
            MenuItemWidget(
              onTap: () {
                showWhitePopup(
                    context: context,
                    widget: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const TextWidget(
                            text: "Logout",
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextWidget(
                            text: "Are you sure you want to logout?",
                            textAlign: TextAlign.center,
                            fontSize: 18,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: "Yes",
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              TextWidget(
                                  text: "Logout",
                                  onTap: () {
                                    Navigator.popUntil(
                                        context, (route) => route.isFirst);
                                  },
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red)
                            ],
                          )
                        ],
                      ),
                    ));
              },
              iconPath: "assets/images/logout.png",
              label: "Logout",
              color: const Color.fromARGB(252, 255, 0, 0),
            ),
            const Spacer(),
            Image.asset(
              "assets/images/upgrade_to_premium.png",
              width: 200.width,
            ),
            SizedBox(
              height: 20.height,
            ),
            const Flexible(child: PrivacyPolicyWidget()),
          ],
        ),
      ),
    );
  }
}
