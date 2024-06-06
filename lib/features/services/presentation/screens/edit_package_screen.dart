import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:flutter/material.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../store/presentation/widgets/name_change_popup.dart';

class EditPackageScreen extends StatefulWidget {
  const EditPackageScreen({super.key});

  @override
  State<EditPackageScreen> createState() => _EditPackageScreenState();
}

class _EditPackageScreenState extends State<EditPackageScreen> {
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
          text: "Edit Package",
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
              Image.asset("assets/images/makeup_service.png"),
              const SizedBox(
                height: 30,
              ),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Package Name",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "Bridal Makeup"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Price",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "NGN 8,700"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Package Description",
                            isCancelled: () {},
                          );
                        });
                  },
                  content:
                      "Elevate your facial appearance with our first grade makeup sessions."),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Package Duration",
                            isCancelled: () {},
                          );
                        });
                  },
                  content: "1hr"),
              DetailsContainer(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditPopUp(
                            label: "Edit details",
                            isCancelled: () {},
                          );
                        });
                  },
                  content:
                      "Elevate your culinary taste with our mouth watering delicious Jollof rice."),
              const SizedBox(
                height: 30,
              ),
              PrimaryButton(
                  label: "Submit",
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.serviceSummary);
                  },
                  isEnabled: true),
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
