import 'package:broadcaadvendor/features/home/presentation/screens/store_front.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/dashboard_widget.dart';
import 'package:broadcaadvendor/features/profile/presentation/screens/vendor_profile.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/service_summary_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  late final List<Widget> _bodyOptions = [
    DashBoardWidget(scaffoldKey: scaffoldKey),
    StoreFrontScreen(
      scaffoldKey: scaffoldKey,
    ),
    ServiceSummaryScreen(
      scaffoldKey: scaffoldKey,
    ),
    const VendorProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MenuWidget(),
        key: scaffoldKey,
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: _buildingBottomNavBar(context),
        body: _bodyOptions[_selectedIndex]);
  }

  Container _buildingBottomNavBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.tertiary)),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          4,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Opacity(
              opacity: _selectedIndex == index ? 1 : .6,
              child: Image.asset(
                index == 0
                    ? "assets/images/menu.png"
                    : index == 1
                        ? "assets/images/shop_nav.png"
                        : index == 2
                            ? "assets/images/service_nav.png"
                            : "assets/images/user_nav.png",
                width: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
