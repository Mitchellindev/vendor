import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/logo_header.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/menu_widget.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/search_header.dart';
import 'package:broadcaadvendor/features/services/presentation/widgets/scrollable_service_body.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/fab_icon_button.dart';
import 'package:flutter/material.dart';

class ServiceSummaryScreen extends StatefulWidget {
  const ServiceSummaryScreen({super.key});

  @override
  State<ServiceSummaryScreen> createState() => _ServiceSummaryScreenState();
}

class _ServiceSummaryScreenState extends State<ServiceSummaryScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      key: scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              const LogoHeader(),
              SearchHeader(scaffoldKey: scaffoldKey),

              // const NoStoreWidget()

              ScrollableBodyService(controller: controller),
            ],
          ),
        ),
      ),
      floatingActionButton: FabIconButton(
        borderRadius: 20,
        icon: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.addProduct);
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
