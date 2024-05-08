import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/utils/size_config.dart';
import 'package:broadcaadvendor/core/widgets/horizontal_divider.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/services/presentation/widgets/packages_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/cover_image_stack.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/description.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/my_tab_view_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/primary_icon_button.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/rating_row.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/reviews.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/short_primary_button.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/vendor_details.dart';
import 'package:flutter/material.dart';

class ScrollableBodyService extends StatelessWidget {
  const ScrollableBodyService({
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
                text: "Glam and Shine",
                fontSize: 21,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              const TextWidget(
                textAlign: TextAlign.center,
                text: "@glam-and-shine",
                fontSize: 28,
                color: Color(0xffF49F1C),
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: "Makeup Services (PROFESS......)",
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
                  ShortPrimaryButton(
                    label: "Edit Service Profile",
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.editServiceProfile);
                    },
                  ),
                  PrimaryIconButton(
                    onTap: () {},
                    icon: Image.asset(
                      "assets/images/block_icon.png",
                      width: 24,
                    ),
                  ),
                  PrimaryIconButton(
                    onTap: () {},
                    icon: Image.asset(
                      "assets/images/chart.png",
                      width: 24,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: SizeConfig.getProportionateScreenWidth(
                        context: context, inputWidth: 115),
                    child: PrimaryButton(
                        label: "0 Views", onPressed: () {}, isEnabled: true),
                  ),
                  SizedBox(
                    width: SizeConfig.getProportionateScreenWidth(
                        context: context, inputWidth: 226),
                    child: PrimaryButton(
                        icon: Image.asset(
                          "assets/images/promote.png",
                          width: 30,
                        ),
                        label: " Promote Service",
                        onPressed: () {},
                        isEnabled: true),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const MyTabViewWidget(
                body: [PackagesTabView(), Description(), Reviews()],
                tabLabels: ["Packages", "Description", "Reviews"],
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
