import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class AddServicePackageScreen extends StatefulWidget {
  const AddServicePackageScreen({super.key});

  @override
  State<AddServicePackageScreen> createState() =>
      _AddServicePackageScreenState();
}

class _AddServicePackageScreenState extends State<AddServicePackageScreen> {
  late GlobalKey<FormFieldState> productNameKey;
  late GlobalKey<FormFieldState> itemCodeKey;
  late GlobalKey<FormFieldState> productPriceKey;
  late GlobalKey<FormFieldState> productDiscriptionKey;
  late GlobalKey<FormFieldState> addDetailsKey;
  late GlobalKey<FormFieldState> packageBookingDurationKey;

  bool obscureText = true;
  bool emailIsValid = false;

  bool nameIsValid = false;
  bool passwordIsValid = false;

  @override
  void initState() {
    productNameKey = GlobalKey<FormFieldState>();
    itemCodeKey = GlobalKey<FormFieldState>();
    productPriceKey = GlobalKey<FormFieldState>();
    productDiscriptionKey = GlobalKey<FormFieldState>();
    addDetailsKey = GlobalKey<FormFieldState>();
    packageBookingDurationKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  PageController controller = PageController(viewportFraction: .9);
  int value = 0;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(width: 0.5)),
          title: const TextWidget(
            text: "Upload Service Package",
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
          child: ListView(children: [
            SizedBox(
              height: 280,
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
                            width: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextWidget(
                            textAlign: TextAlign.center,
                            text: "Add Package Image",
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
            const SizedBox(
              height: 30,
            ),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Package Name",
                onChanged: (val) {},
                textFieldkey: productNameKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Item Code",
                onChanged: (val) {},
                textFieldkey: itemCodeKey),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Package Price",
                onChanged: (val) {},
                textFieldkey: productPriceKey),
            InputFieldWidget(
                maxLines: 5,
                verticalContentPadding: 10,
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                enabledBorderRadius: 5,
                hintSize: 18,
                hintText: "Package Description",
                onChanged: (val) {},
                textFieldkey: productDiscriptionKey),
            InputFieldWidget(
              hintColor: colorScheme.primary,
              validator: (p0) {
                return null;
              },
              textFieldkey: packageBookingDurationKey,
              enabledBorderRadius: 5,
              hintSize: 18,
              hintText: "Package Booking Duration",
              onChanged: (val) {},
            ),
            InputFieldWidget(
                hintColor: colorScheme.primary,
                validator: (p0) {
                  return null;
                },
                maxLines: 5,
                enabledBorderRadius: 5,
                hintSize: 18,
                verticalContentPadding: 10,
                hintText: "Additional Information",
                onChanged: (val) {},
                textFieldkey: addDetailsKey),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
                label: "Submit",
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.editStore);
                },
                isEnabled: true),
            const SizedBox(
              height: 30,
            ),
          ]),
        ));
  }
}
