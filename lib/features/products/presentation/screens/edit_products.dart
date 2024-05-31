import 'package:flutter/material.dart';

import '../../../../app/enums/enums.dart';
import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../store/presentation/widgets/accordion_widget.dart';
import '../../../store/presentation/widgets/name_change_popup.dart';
import '../../../store/presentation/widgets/vendor_category_check_box.dart';
import '../widgets/stock_counter.dart';

class EditProductsScreen extends StatefulWidget {
  const EditProductsScreen({super.key});

  @override
  State<EditProductsScreen> createState() => _EditProductsScreenState();
}

class _EditProductsScreenState extends State<EditProductsScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = true;
  PageController controller =
      PageController(viewportFraction: .9, initialPage: 1);
  int value = 0;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Edit Product",
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
              Image.asset("assets/images/product.png"),
              const SizedBox(
                height: 30,
              ),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Products Name",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "Fashion Men Long Sleeves"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Product Color",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "#34232"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Product Price",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "NGN 3,232"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Product Description",
                            isCancelled: () {},
                          );
                        });
                  },
                  content:
                      "A long-sleeved shirt for male typically features a button-down front, collar, and a cuffs at the wrist. It’s designed to provide coverage and warmth, often made from variety of fabrics like cotton or linen. these shirt comes in various color, patterns, and style, suitable for both formal and casual occassions."),
              AccordionWidget(
                paddingListTop: 10,
                paddingListBottom: 10,
                label: "Categories",
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ProductCategories.values.length,
                    (index) => CheckBoxContainerWidget<ProductCategories>(
                          label: ProductCategories.values[index].name,
                        )),
              ),
              AccordionWidget(
                paddingListTop: 10,
                paddingListBottom: 10,
                label: "Color",
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ProductColor.values.length,
                    (index) => CheckBoxContainerWidget<ProductColor>(
                          label: ProductColor.values[index].name,
                        )),
              ),
              AccordionWidget(
                paddingListTop: 10,
                paddingListBottom: 10,
                label: "Size",
                colorScheme: colorScheme,
                widgetList: List.generate(
                    ProductSize.values.length,
                    (index) => CheckBoxContainerWidget<ProductSize>(
                          label: ProductSize.values[index].name,
                        )),
              ),
              StockCounter(
                  onPressedRemove: () {
                    setState(() {
                      if (value > 0) {
                        value--;
                      }
                    });
                  },
                  onPressedAdd: () {
                    setState(() {
                      value++;
                    });
                  },
                  value: value),
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
