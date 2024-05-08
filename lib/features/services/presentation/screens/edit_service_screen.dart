import 'package:broadcaadvendor/app/enums/enums.dart';
import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/accordion_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/cover_image_stack.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/edit_photos_popup.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/name_change_popup.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/primary_icon_button.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/vendor_category_check_box.dart';
import 'package:flutter/material.dart';

class EditServiceScreen extends StatefulWidget {
  const EditServiceScreen({super.key});

  @override
  State<EditServiceScreen> createState() => _EditServiceScreenState();
}

class _EditServiceScreenState extends State<EditServiceScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = true;
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Edit Service Profile",
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
                            label: "Service Name",
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
                            label: "Service Handle",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "@omega-clothing"),
              AccordionWidget(
                label: "Service Type",
                paddingListBottom: 0,
                paddingListTop: 10,
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ServiceType.values.length,
                    (index) => CheckBoxContainerWidget<ServiceType>(
                          label: ServiceType.values[index].name,
                        )),
              ),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Service Description",
                            isCancelled: () {},
                          );
                        });
                  },
                  content:
                      "Omega stores is a vibrant clothing store that captures the essence of beauty and individuality. "),
              AccordionWidget(
                label: "Service Schedule",
                paddingListBottom: 0,
                paddingListTop: 10,
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ServiceSchedule.values.length,
                    (index) => CheckBoxContainerWidget<ServiceSchedule>(
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
                label: "Service Category",
                paddingListBottom: 0,
                paddingListTop: 10,
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ServiceCategory.values.length,
                    (index) => CheckBoxContainerWidget<ServiceCategory>(
                          label: ServiceCategory.values[index].name,
                        )),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: CheckBoxContainerWidget(
                    label: "Promote your first service for as low as  NGN 100"),
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
                  width: 20,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
