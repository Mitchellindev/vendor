import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:broadcaadvendor/core/widgets/horizontal_divider.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/loading_screen_body.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/chart_container.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/datails_grid_bloc.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/orange_data_row_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/store_details_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  DateTime selectedTime = DateTime.now();

  bool noStore = false;
  bool isLoading = true;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "label": "Total Earnings",
        "amount": "12.00",
        "onTap": () async {
          Navigator.pushNamed(context, Routes.storePerformance);
        }
      },
      {
        "label": "Total Sales",
        "amount": "12.00",
        "onTap": () {
          Navigator.pushNamed(context, Routes.storePerformance);
        }
      },
      {
        "label": "Wallet Balance",
        "amount": "12.00",
        "onTap": () {
          Navigator.pushNamed(context, Routes.myWallet);
        }
      },
      {
        "label": "Weekly Sales",
        "amount": "12.00",
        "onTap": () {
          Navigator.pushNamed(context, Routes.storePerformance);
        }
      },
      {
        "label": "Payout",
        "amount": "12.00",
        "onTap": () {
          Navigator.pushNamed(context, Routes.paymentMethods);
        }
      },
      {"label": "Albert Here", "amount": "Say Hi", "onTap": () {}},
    ];
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });

    return Scaffold(
      drawer: const MenuWidget(),
      key: scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 20.0.width, vertical: 20.height),
          child: isLoading
              ? const LoadingScreenBody()
              : Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                scaffoldKey.currentState?.openDrawer();
                              },
                              child: const Icon(
                                Icons.menu,
                                size: 25,
                              ),
                            ),
                            const TextWidget(
                              text: "Dashboard",
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.notifications);
                              },
                              child: Image.asset(
                                "assets/images/bell.png",
                                width: 24.width,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.height,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.height),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/profile_pic.png",
                                    width: 60.width,
                                  ),
                                  SizedBox(
                                    width: 20.width,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: "Hello,",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      TextWidget(
                                          text: "Sanni Kayinsola", fontSize: 16)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.height,
                              ),
                              Row(
                                children: [
                                  const TextWidget(
                                    text: "Overview",
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: 120.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Switch(
                                          inactiveThumbColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          trackOutlineColor: isVisible
                                              ? MaterialStatePropertyAll(
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .primary)
                                              : MaterialStatePropertyAll(
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                          activeTrackColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          value: isVisible,
                                          onChanged: ((value) {
                                            setState(() {
                                              isVisible = value;
                                            });
                                          }),
                                        ),
                                        TextWidget(
                                          text: isVisible ? "Show" : "Hide",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.height,
                              ),
                              SizedBox(
                                height: SizeConfig.getProportionateScreenHeight(
                                    context: context, inputHeight: 150),
                                child: GridView.count(
                                  mainAxisSpacing: 10,
                                  primary: false,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  childAspectRatio: 2 / 1,
                                  children: List.generate(
                                      data.length,
                                      (index) => index == 5
                                          ? const DetailsGridBlock(
                                              label: "Albert Here",
                                              value: "Say Hi",
                                            )
                                          : GestureDetector(
                                              onTap: data[index]["onTap"],
                                              child: DetailsGridBlock(
                                                label: data[index]["label"],
                                                value: isVisible
                                                    ? "₦${data[index]["amount"]}"
                                                    : "*****",
                                              ),
                                            )),
                                ),
                              ),
                              const HorizontalDivider(
                                paddingVertical: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: TextWidget(
                                  text: "Sales OverView",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 400,
                                child: ChartContainer(
                                    selectedDate: selectedTime, label: "Sales"),
                              ),
                              SizedBox(
                                height: 20.height,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.myStores);
                                },
                                child: const StoreDetailsWidget(
                                  header: "Inventory Insights",
                                  dataRows: [
                                    OrangeDataRow(label: "Sold", value: "1"),
                                    OrangeDataRow(label: "Stock", value: "1"),
                                    OrangeDataRow(label: "Rejected", value: "1")
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.myStores);
                                },
                                child: const StoreDetailsWidget(
                                  header: "Store Overview",
                                  dataRows: [
                                    OrangeDataRow(
                                        label: "Total Store:", value: "0"),
                                    OrangeDataRow(
                                        label: "Free store left:", value: "2")
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.myServices);
                                },
                                child: const StoreDetailsWidget(
                                  header: "Service Overview",
                                  dataRows: [
                                    OrangeDataRow(
                                        label: "Total service:", value: "0"),
                                    OrangeDataRow(
                                        label: "Free service left:", value: "2")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.getProportionateScreenHeight(
                              context: context, inputHeight: 50.height),
                        )
                      ],
                    ),
                    PrimaryButton(
                        label: "Create Your Store/Service",
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.noStoreOrService);
                        },
                        isEnabled: true),
                    SizedBox(
                      height: 20.height,
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
