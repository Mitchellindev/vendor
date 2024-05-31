import 'package:flutter/material.dart';

import '../../../../app/enums/enums.dart';
import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/accordion_widget.dart';
import '../widgets/checkbox_container_widget.dart';
import '../widgets/cover_image_stack.dart';
import '../widgets/edit_photos_popup.dart';
import '../widgets/name_change_popup.dart';
import '../widgets/primary_icon_button.dart';
import '../widgets/vendor_category_check_box.dart';

class EditStoreScreen extends StatefulWidget {
  const EditStoreScreen({super.key});

  @override
  State<EditStoreScreen> createState() => _EditStoreScreenState();
}

class _EditStoreScreenState extends State<EditStoreScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = true;
  PageController controller =
      PageController(viewportFraction: .9, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Edit Store Profile",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 20),
          child: ListView(
            children: [
              CoverImageStack(controller: controller),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryIconButton(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return EditPhotosPopUp(
                              isCancelled: () {},
                            );
                          });
                    },
                    width: 50,
                    height: 50,
                    icon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        "assets/images/edit_image.png",
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Vendor Name",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "John Doe"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Store Name",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "Omega Stores"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Store Handle",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "@omega-clothing"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Store Description",
                            isCancelled: () {},
                          );
                        });
                  },
                  content:
                      "Omega stores is a vibrant clothing store that captures the essence of beauty and individuality. "),
              AccordionWidget(
                label: "Service Schedule",
                paddingListTop: 10,
                paddingListBottom: 10,
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ServiceSchedule.values.length,
                    (index) => CheckBoxContainerWidgetDay(
                          day: ServiceSchedule.values[index],
                          label: ServiceSchedule.values[index].name,
                        )),
              ),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Store Address",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "Ikoyi Lagos"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "State",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "Lagos"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "City",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "Ikeja"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Email",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "johndoe@gmail.com"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Phone Number",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "09053566745"),
              AccordionWidget(
                label: "Vendor Category",
                paddingListBottom: 0,
                paddingListTop: 10,
                colorScheme: colorScheme,
                widgetList: List.generate(
                    VendorCategory.values.length,
                    (index) => CheckBoxContainerWidget<ProductCategories>(
                          label: VendorCategory.values[index].name,
                        )),
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryButton(label: "Submit", onPressed: () {}, isEnabled: true),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer(
      {super.key, required this.content, required this.onTap});
  final String content;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13)
              .copyWith(right: 50),
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff030E4F), width: 0.5),
          ),
          child: TextWidget(
            text: content,
            fontSize: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Image.asset(
                  "assets/images/edit_pen.png",
                  width: 15,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
