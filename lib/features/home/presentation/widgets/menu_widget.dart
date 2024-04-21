import 'package:broadcaadvendor/features/home/presentation/widgets/menu_item_widget.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/notification_menu_item.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            "assets/images/menu_logo.png",
            width: 180,
          ),
          const SizedBox(
            height: 75,
          ),
          const NotificationMenuItem(),
          const MenuItemWidget(
              iconPath: "assets/images/chat_menu_item.png", label: "My Chat"),
          const MenuItemWidget(
              iconPath: "assets/images/profile.png",
              imageWidth: 22,
              label: "My Profile"),
          const MenuItemWidget(
              iconPath: "assets/images/cart.png",
              imageWidth: 28,
              label: "My Orders"),
          const MenuItemWidget(
              iconPath: "assets/images/clock.png", label: "Pending Items"),
          const MenuItemWidget(
              iconPath: "assets/images/chart.png", label: "My Store Analytics")
        ],
      ),
    );
  }
}
