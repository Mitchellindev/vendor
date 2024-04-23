import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NoStoreWidget extends StatefulWidget {
  const NoStoreWidget({super.key});

  @override
  State<NoStoreWidget> createState() => _NoStoreWidgetState();
}

class _NoStoreWidgetState extends State<NoStoreWidget> {
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .95,
        child: ListView(
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
              height: 80,
            ),
            PrimaryButton(
                label: "Create your store",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.firstStoreCreation);
                },
                isEnabled: true),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(
              textAlign: TextAlign.center,
              text: "OR",
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryButton(
              label: "Create your service",
              onPressed: () {},
              labelColor: const Color(0xff030E4F),
              backgroundColor: Colors.white,
              isEnabled: true,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/cuate.png",
                    width: 117.14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextWidget(
                    textAlign: TextAlign.center,
                    text: "You have no store/ service",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextWidget(
                    textAlign: TextAlign.center,
                    text:
                        "Tap on either buttons above to create your first store or service",
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
