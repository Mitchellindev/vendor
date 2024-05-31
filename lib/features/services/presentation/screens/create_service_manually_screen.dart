import 'package:flutter/material.dart';

import '../../../../app/enums/enums.dart';
import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../auth/presentation/widgets/input_field_widget.dart';
import '../../../store/presentation/widgets/accordion_widget.dart';
import '../../../store/presentation/widgets/checkbox_container_widget.dart';
import '../../../store/presentation/widgets/vendor_category_check_box.dart';

class ServiceCreationFormScreen extends StatefulWidget {
  const ServiceCreationFormScreen({super.key});

  @override
  State<ServiceCreationFormScreen> createState() =>
      _ServiceCreationFormScreenState();
}

class _ServiceCreationFormScreenState extends State<ServiceCreationFormScreen> {
  late GlobalKey<FormFieldState> serviceProviderNameKey;
  late GlobalKey<FormFieldState> serviceNameKey;
  late GlobalKey<FormFieldState> serviceHandleKey;
  late GlobalKey<FormFieldState> serviceDescriotionKey;

  late GlobalKey<FormFieldState> serviceAddressKey;
  late GlobalKey<FormFieldState> stateKey;
  late GlobalKey<FormFieldState> cityKey;
  late GlobalKey<FormFieldState> emailAddressKey;
  late GlobalKey<FormFieldState> phoneNumberKey;
  late GlobalKey<FormFieldState> detailsKey;

  bool obscureText = true;
  bool emailIsValid = false;

  bool nameIsValid = false;
  bool passwordIsValid = false;
  bool toPromote = false;
  @override
  void initState() {
    serviceProviderNameKey = GlobalKey<FormFieldState>();
    serviceNameKey = GlobalKey<FormFieldState>();
    serviceHandleKey = GlobalKey<FormFieldState>();
    serviceAddressKey = GlobalKey<FormFieldState>();
    serviceDescriotionKey = GlobalKey<FormFieldState>();
    stateKey = GlobalKey<FormFieldState>();
    emailAddressKey = GlobalKey<FormFieldState>();
    phoneNumberKey = GlobalKey<FormFieldState>();
    cityKey = GlobalKey<FormFieldState>();
    detailsKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  PageController controller =
      PageController(viewportFraction: .9, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(width: 0.5)),
          title: const TextWidget(
            text: "Service Creation",
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
                hintText: "Service Provider Name",
                onChanged: (val) {},
                textFieldkey: serviceProviderNameKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Service Name",
                onChanged: (val) {},
                textFieldkey: serviceNameKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Service Handle",
                onChanged: (val) {},
                textFieldkey: serviceHandleKey),
            AccordionWidget(
              label: "Service Type",
              colorScheme: colorScheme,
              widgetList: List.generate(
                  ServiceNature.values.length,
                  (index) => CheckBoxContainerWidget<ServiceNature>(
                        label: ServiceNature.values[index].name,
                      )),
            ),
            AccordionWidget(
              label: "Service Type",
              colorScheme: colorScheme,
              widgetList: List.generate(
                  ServiceType.values.length,
                  (index) => CheckBoxContainerWidget<ServiceType>(
                        label: ServiceType.values[index].name,
                      )),
            ),
            InputFieldWidget(
                maxLines: 5,
                verticalContentPadding: 10,
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Service Description",
                onChanged: (val) {},
                textFieldkey: serviceDescriotionKey),
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
                hintText: "Service Address",
                onChanged: (val) {},
                textFieldkey: serviceAddressKey),
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
              label: "Service Category",
              colorScheme: colorScheme,
              widgetList: List.generate(
                  ServiceType.values.length,
                  (index) => CheckBoxContainerWidget<ServiceType>(
                        label: ServiceType.values[index].name,
                      )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: CheckBoxContainerWidget(
                  label: "Promote your first service for as low as  NGN 100"),
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
                label: "Submit",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.serviceSummary);
                },
                isEnabled: true),
            const SizedBox(
              height: 20,
            )
          ]),
        ));
  }
}
