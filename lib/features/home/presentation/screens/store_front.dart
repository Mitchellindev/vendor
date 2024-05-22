import 'package:broadcaadvendor/features/store/presentation/widgets/store_summary_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/logo_header.dart';
import '../widgets/menu_widget.dart';
import '../widgets/search_header.dart';

class StoreFrontScreen extends StatefulWidget {
  const StoreFrontScreen({super.key});

  @override
  State<StoreFrontScreen> createState() => _StoreFrontScreenState();
}

class _StoreFrontScreenState extends State<StoreFrontScreen> {
  bool noStore = false;
  bool isLoading = true;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });

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
              SearchHeader(
                scaffoldKey: scaffoldKey,
                withSearch: noStore,
              ),
              // if (isLoading) const LoadingScreenBody(),

              const StoreSummary(),
              // if (noStore) const NoStoreWidget()
            ],
          ),
        ),
      ),
    );
  }
}
