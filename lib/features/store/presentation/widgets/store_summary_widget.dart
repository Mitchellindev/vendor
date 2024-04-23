import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/widgets/horizontal_divider.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/fab_row.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/primary_icon_button.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/product_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/short_primary_button.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/vendor_details.dart';
import 'package:flutter/material.dart';

class StoreSummary extends StatefulWidget {
  const StoreSummary({super.key});

  @override
  State<StoreSummary> createState() => _StoreSummaryState();
}

class _StoreSummaryState extends State<StoreSummary> {
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        height: 170,
                        width: double.infinity,
                        child: PageView(
                            controller: controller,
                            padEnds: true,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              3,
                              (index) => Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 0.5,
                                    color: const Color.fromRGBO(3, 14, 79, 1),
                                  ),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/cover_image.png'), // Replace with your image path
                                    fit: BoxFit
                                        .cover, // Adjust fit as needed (cover, contain, etc.)
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Positioned(
                        bottom: -50,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/cover_image.png'), // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 0.5,
                              color: const Color.fromRGBO(3, 14, 79, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffF49F1C),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xffF49F1C),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xffF49F1C),
                      ),
                      Icon(
                        Icons.star_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Icon(
                        Icons.star_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ShortPrimaryButton(),
                      PrimaryIconButton(
                        icon: Image.asset(
                          "assets/images/shop.png",
                          width: 24,
                        ),
                      ),
                      PrimaryIconButton(
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
                  Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: PrimaryButton(
                        label: "0 Views", onPressed: () {}, isEnabled: true),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const MyTabViewWidget()
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 30,
          right: 5,
          child: FabRow(),
        ),
      ],
    );
  }
}

class MyTabViewWidget extends StatefulWidget {
  const MyTabViewWidget({super.key});

  @override
  State<MyTabViewWidget> createState() => _MyTabViewWidgetState();
}

class _MyTabViewWidgetState extends State<MyTabViewWidget> {
  Map<String, bool> choice = {
    "Product": true,
    "Category": false,
    "Description": false
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Product",
              onTap: () {
                setState(() {
                  choice["Product"] = true;
                  choice["Category"] = false;
                  choice["Description"] = false;
                });
              },
              fontWeight: FontWeight.w500,
              fontSize: 21,
              color: choice["Product"]!
                  ? Theme.of(context).colorScheme.primary
                  : const Color.fromARGB(70, 3, 14, 79),
            ),
            TextWidget(
              text: "Category",
              fontWeight: FontWeight.w500,
              fontSize: 21,
              onTap: () {
                setState(() {
                  choice["Product"] = false;
                  choice["Category"] = true;
                  choice["Description"] = false;
                });
              },
              color: choice["Category"]!
                  ? Theme.of(context).colorScheme.primary
                  : const Color.fromARGB(70, 3, 14, 79),
            ),
            TextWidget(
              text: "Description",
              fontWeight: FontWeight.w500,
              onTap: () {
                setState(() {
                  choice["Product"] = false;
                  choice["Category"] = false;
                  choice["Description"] = true;
                });
              },
              fontSize: 21,
              color: choice["Description"]!
                  ? Theme.of(context).colorScheme.primary
                  : const Color.fromARGB(70, 3, 14, 79),
            ),
          ],
        ),
        const SizedBox(
          height: 66,
        ),
        if (choice["Product"]!) const ProductWidget(),
        if (choice["Category"]!)
          const ProductWidget(), //TODO: Create Category Widget

        if (choice["Description"]!)
          const ProductWidget() //TODO: Create Description Widget
      ],
    );
  }
}
