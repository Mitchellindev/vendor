import 'package:flutter/material.dart';

import '../../../../config/router/routes.dart';
import '../../../home/presentation/widgets/logo_header.dart';
import '../../../home/presentation/widgets/search_header.dart';
import '../../../store/presentation/widgets/fab_icon_button.dart';
import '../widgets/scrollable_service_body.dart';

class ServiceSummaryScreen extends StatefulWidget {
  const ServiceSummaryScreen({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<ServiceSummaryScreen> createState() => _ServiceSummaryScreenState();
}

class _ServiceSummaryScreenState extends State<ServiceSummaryScreen> {
  PageController controller =
      PageController(viewportFraction: .9, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          children: [
            ListView(
              children: [
                const LogoHeader(),
                SearchHeader(scaffoldKey: widget.scaffoldKey),

                // const NoStoreWidget()

                ScrollableBodyService(controller: controller),
              ],
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .01,
              right: 5,
              child: FabIconButton(
                onTap: () {
                  Navigator.pushNamed(context, Routes.addPackage);
                },
                borderRadius: 20,
                icon: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.addPackage);
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
