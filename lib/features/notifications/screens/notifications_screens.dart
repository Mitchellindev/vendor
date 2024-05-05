import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key,
      required this.isRead,
      required this.onTap,
      required this.menuItems,
      required this.onMenuItemSelected});
  final bool isRead;
  final VoidCallback onTap;
  final List<Map<String, dynamic>> menuItems; // List of menu item titles
  final List<VoidCallback> onMenuItemSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isRead
                    ? Colors.transparent
                    : const Color.fromARGB(49, 3, 14, 79)),
            width: double.infinity,
            height: 107,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/notification.png",
                      width: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: SizeConfig.getProportionateScreenWidth(
                          context: context, inputWidth: 220),
                      child: const TextWidget(
                        text: "Kelvin and two others viewed your store.",
                        fontSize: 16,
                      ),
                    ),
                    PopupMenuButton<int>(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      icon: const Icon(Icons.more_vert),
                      onSelected: (int itemIndex) =>
                          onMenuItemSelected[itemIndex](),
                      itemBuilder: (context) => [
                        for (int i = 0; i < menuItems.length; i++)
                          PopupMenuItem<int>(
                            value: i,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Image.asset(
                                    menuItems[i]["icon"],
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: menuItems[i]["title"],
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      TextWidget(
                                        text: menuItems[i]["subTitle"],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextWidget(
                        text: "6/23  4:00AM",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
