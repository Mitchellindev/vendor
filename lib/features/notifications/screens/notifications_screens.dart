import 'package:flutter/material.dart';

import '../../../core/widgets/text_widget.dart';
import '../widgets/notification_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Notifications",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: ListView(
          children: List.generate(
            5,
            (index) => NotificationItem(
              onMenuItemSelected: [() {}],
              menuItems: const [
                {
                  "icon": "assets/images/mark_as_read.png",
                  "title": "Mark as read",
                  "subTitle": "Mark notification as read",
                },
                {
                  "icon": "assets/images/trash.png",
                  "title": "Delete",
                  "subTitle": "Delete this notification",
                },
                {
                  "icon": "assets/images/block.png",
                  "title": "Block",
                  "subTitle": "Stop this notification",
                }
              ],
              isRead: false,
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}
