import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';
import '../../../core/widgets/text_widget.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key,
      required this.isRead,
      required this.onTap,
      required this.menuItems,
      required this.onMenuItemSelected});
  final bool isRead;
  final VoidCallback onTap;
  final List<Map<String, dynamic>> menuItems;
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
            height: 190.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
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
                            context: context, inputWidth: 210.width),
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
