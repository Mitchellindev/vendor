import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NotificationMenuItem extends StatefulWidget {
  const NotificationMenuItem({super.key});

  @override
  State<NotificationMenuItem> createState() => _NotificationMenuItemState();
}

class _NotificationMenuItemState extends State<NotificationMenuItem> {
  bool appNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/bell.png",
          color: Colors.white,
          width: 30,
        ),
        const TextWidget(
          text: "App Notification",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        Transform.scale(
            scale: 0.4,
            child: Switch(
                inactiveThumbColor: const Color(0xffF49F1C),
                activeTrackColor: const Color(0xffF49F1C),
                value: appNotificationEnabled,
                onChanged: ((value) {
                  setState(() {
                    appNotificationEnabled = value;
                  });
                })))
      ],
    );
  }
}
