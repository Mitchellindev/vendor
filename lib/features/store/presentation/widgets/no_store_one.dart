import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../home/presentation/widgets/logo_header.dart';
import '../../../home/presentation/widgets/search_header.dart';

class NoStoreOrServiceScreen extends StatefulWidget {
  const NoStoreOrServiceScreen({super.key});

  @override
  State<NoStoreOrServiceScreen> createState() => _NoStoreOrServiceScreenState();
}

class _NoStoreOrServiceScreenState extends State<NoStoreOrServiceScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const MenuWidget(),
      body: NoStoreWidget(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class NoStoreWidget extends StatefulWidget {
  const NoStoreWidget({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<NoStoreWidget> createState() => _NoStoreWidgetState();
}

class _NoStoreWidgetState extends State<NoStoreWidget> {
  PageController controller =
      PageController(viewportFraction: .9, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20).copyWith(left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .95,
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const LogoHeader(),
                SearchHeader(
                  scaffoldKey: widget.scaffoldKey,
                  withSearch: false,
                ),
                SizedBox(
                  height: 50.height,
                ),
              ],
            ),
            Container(
              width: double.infinity,
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
            const Spacer(),
            PrimaryButton(
                label: "Create your store",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.firstStoreCreation);
                },
                isEnabled: true),
            SizedBox(
              height: 5.height,
            ),
            const TextWidget(
              textAlign: TextAlign.center,
              text: "OR",
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            const SizedBox(
              height: 5,
            ),
            PrimaryButton(
              label: "Create your service",
              onPressed: () {
                Navigator.pushNamed(context, Routes.createFirstService);
              },
              labelColor: const Color(0xff030E4F),
              backgroundColor: Colors.white,
              isEnabled: true,
            ),
            const Spacer(),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
