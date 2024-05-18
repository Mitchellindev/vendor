import '../../../../app/enums/enums.dart';
import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../auth/presentation/widgets/input_field_widget.dart';
import '../widgets/accordion_widget.dart';
import '../widgets/checkbox_container_widget.dart';
import '../widgets/vendor_category_check_box.dart';
import 'package:flutter/material.dart';

class StoreCreationFormScreeen extends StatefulWidget {
  const StoreCreationFormScreeen({super.key});

  @override
  State<StoreCreationFormScreeen> createState() =>
      _StoreCreationFormScreeenState();
}

class _StoreCreationFormScreeenState extends State<StoreCreationFormScreeen> {
  late GlobalKey<FormFieldState> vendorNameKey;
  late GlobalKey<FormFieldState> storeNameKey;
  late GlobalKey<FormFieldState> storeHandleKey;
  late GlobalKey<FormFieldState> storeDiscriptionKey;

  late GlobalKey<FormFieldState> storeAddressKey;
  late GlobalKey<FormFieldState> stateKey;
  late GlobalKey<FormFieldState> cityKey;
  late GlobalKey<FormFieldState> emailAddressKey;
  late GlobalKey<FormFieldState> phoneNumberKey;
  late GlobalKey<FormFieldState> detailsKey;
  late GlobalKey<FormFieldState> addDetailsKey;

  bool obscureText = true;
  bool emailIsValid = false;

  bool nameIsValid = false;
  bool passwordIsValid = false;

  @override
  void initState() {
    vendorNameKey = GlobalKey<FormFieldState>();
    storeNameKey = GlobalKey<FormFieldState>();
    storeHandleKey = GlobalKey<FormFieldState>();
    storeAddressKey = GlobalKey<FormFieldState>();
    storeDiscriptionKey = GlobalKey<FormFieldState>();
    stateKey = GlobalKey<FormFieldState>();
    emailAddressKey = GlobalKey<FormFieldState>();
    phoneNumberKey = GlobalKey<FormFieldState>();
    cityKey = GlobalKey<FormFieldState>();
    detailsKey = GlobalKey<FormFieldState>();
    addDetailsKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(width: 0.5)),
          title: const TextWidget(
            text: "Store Creation",
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
          child: ListView(children: [
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
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 0.5,
                              color: const Color.fromRGBO(3, 14, 79, 1),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/gallery_add.png",
                                width: 24,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const TextWidget(
                                textAlign: TextAlign.center,
                                text: "Upload cover photo",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xffF49F1C),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
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
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(3, 14, 79, 1),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Image.asset(
                          "assets/images/gallery_add.png",
                          width: 24,
                        ),
                        const TextWidget(
                          textAlign: TextAlign.center,
                          text: "Logo",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xffF49F1C),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Vendor Name",
                onChanged: (val) {},
                textFieldkey: vendorNameKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Store Name",
                onChanged: (val) {},
                textFieldkey: storeNameKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Store Handle",
                onChanged: (val) {},
                textFieldkey: storeHandleKey),
            InputFieldWidget(
                maxLines: 5,
                verticalContentPadding: 10,
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Store Description",
                onChanged: (val) {},
                textFieldkey: storeDiscriptionKey),
            AccordionWidget(
              label: "Service Schedule",
              colorScheme: colorScheme,
              widgetList: List.generate(
                  ServiceSchedule.values.length,
                  (index) => CheckBoxContainerWidgetDay(
                        day: ServiceSchedule.values[index],
                        label: ServiceSchedule.values[index].name,
                      )),
            ),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Store Address",
                onChanged: (val) {},
                textFieldkey: storeAddressKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "State",
                onChanged: (val) {},
                textFieldkey: stateKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "City",
                onChanged: (val) {},
                textFieldkey: cityKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Email Address",
                onChanged: (val) {},
                textFieldkey: emailAddressKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Phone Number",
                onChanged: (val) {},
                textFieldkey: phoneNumberKey),
            AccordionWidget(
              label: "Vendor Category",
              colorScheme: colorScheme,
              widgetList: List.generate(
                  VendorCategory.values.length,
                  (index) => CheckBoxContainerWidget<VendorCategory>(
                        label: VendorCategory.values[index].name,
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
                label: "Submit",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.editStore);
                },
                isEnabled: true),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Add details.....",
                onChanged: (val) {},
                textFieldkey: addDetailsKey),
            const SizedBox(
              height: 30,
            )
          ]),
        ));
  }
}
