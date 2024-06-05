import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:broadcaadvendor/core/widgets/horizontal_divider.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/profile/presentation/widgets/fab_row_two.dart';
import 'package:broadcaadvendor/features/profile/presentation/widgets/profile_action_widget.dart';
import 'package:broadcaadvendor/features/profile/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class VendorProfileScreen extends StatefulWidget {
  const VendorProfileScreen({super.key});

  @override
  State<VendorProfileScreen> createState() => _VendorProfileScreenState();
}

class _VendorProfileScreenState extends State<VendorProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  bool appNotificationEnabled = false;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        "icon": "assets/images/notification_icon.png",
        "label": "App Notification",
        "trailing": const Row(),
        "onTap": () {}
      },
      {
        "icon": "assets/images/user.png",
        "onTap": () {
          Navigator.pushNamed(context, Routes.editProfile);
        },
        "label": "Edit Vendor Profile",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.myWallet);
        },
        "icon": "assets/images/wallet.png",
        "label": "Wallet",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.myStores);
        },
        "icon": "assets/images/shop_blue.png",
        "label": "My Stores",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.myServices);
        },
        "icon": "assets/images/service.png",
        "label": "My Services",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.storePerformance);
        },
        "icon": "assets/images/pie_chart.png",
        "label": "Store Performances",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {},
        "icon": "assets/images/history.png",
        "label": "Payment History",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {},
        "icon": "assets/images/reciepts.png",
        "label": "View All Reciepts",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {},
        "icon": "assets/images/persons.png",
        "label": "My Customers",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
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
          text: "Vendor Profile",
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomSheet: BottomSheet(
        // enableDrag: true,
        animationController: _controller,
        onClosing: () {},
        builder: (context) {
          return Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                height: SizeConfig.getProportionateScreenHeight(
                    context: context, inputHeight: 900.height),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    const ProfileHeader(),
                    const HorizontalDivider(
                      paddingVertical: 20,
                    ),
                    Column(
                      children: List.generate(
                        items.length,
                        (index) => index == 0
                            ? ProfileActionWidget(
                                onTap: () {},
                                icon: items[index]["icon"],
                                label: items[index]["label"],
                                trailing: Transform.scale(
                                  scale: .8,
                                  child: Row(
                                    children: [
                                      Switch(
                                        inactiveThumbColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        activeTrackColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: appNotificationEnabled,
                                        onChanged: ((value) {
                                          setState(() {
                                            appNotificationEnabled = value;
                                          });
                                        }),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextWidget(
                                        text: appNotificationEnabled
                                            ? "On"
                                            : "Off",
                                        fontSize: 16,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : ProfileActionWidget(
                                icon: items[index]["icon"],
                                label: items[index]["label"],
                                trailing: items[index]["trailing"],
                                onTap: items[index]["onTap"],
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                bottom: 30,
                right: 20,
                child: FabRowTwo(),
              )
            ],
          );
        },
      ),
    );
  }
}
