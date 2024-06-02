import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/horizontal_divider.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../products/presentation/widgets/categories_widget.dart';
import '../../../products/presentation/widgets/product_widget.dart';
import 'cover_image_stack.dart';
import 'description.dart';
import 'my_tab_view_widget.dart';
import 'rating_row.dart';
import 'reviews.dart';
import 'vendor_details.dart';

class ScrollableBody extends StatelessWidget {
  const ScrollableBody({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CoverImageStack(controller: controller),
              const SizedBox(
                height: 70,
              ),
              TextWidget(
                textAlign: TextAlign.center,
                text: "Omega Stores",
                fontSize: 21,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              const TextWidget(
                textAlign: TextAlign.center,
                text: "@omega_Clothings",
                fontSize: 28,
                color: Color(0xffF49F1C),
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: "Fashion",
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const RatingRow(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary),
                      child: Center(
                        child: TextWidget(
                          text: "Edit Store Profile",
                          fontSize: 18,
                          onTap: () {
                            Navigator.pushNamed(context, Routes.editStore);
                          },
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.width,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary),
                      child: Image.asset(
                        "assets/images/shop.png",
                        width: 24.height,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.width,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary),
                      child: Image.asset(
                        "assets/images/chart.png",
                        width: 24.height,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const VendorDetails(
                icon: "assets/images/profile.png",
                label: "John Doe (Vendor)",
              ),
              const SizedBox(
                height: 20,
              ),
              const VendorDetails(
                icon: "assets/images/chat_menu_item.png",
                label: "johndoe@gmail.com",
              ),
              const SizedBox(
                height: 20,
              ),
              const VendorDetails(
                icon: "assets/images/phone.png",
                label: "johndoe@gmail.com",
              ),
              const SizedBox(
                height: 20,
              ),
              const VendorDetails(
                icon: "assets/images/location.png",
                label: "Ikoyi, Lagos State",
              ),
              const HorizontalDivider(
                paddingVertical: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.primary),
                        child: Center(
                          child: TextWidget(
                            text: "0 Views",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.width,
                  ),
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.primary),
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/promote_store.png",
                                width: 24,
                              ),
                              const Spacer(),
                              TextWidget(
                                text: "Promote Store",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.height,
              ),
              const MyTabViewWidget(
                body: [
                  Products(),
                  CategoriesWidget(),
                  Description(),
                  Reviews()
                ],
                tabLabels: ["Products", "Categories", "Description", "Reviews"],
              ),
              const SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
