import 'package:broadcaadvendor/features/home/presentation/widgets/loading_screen_body.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/logo_header.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/menu_widget.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/search_header.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/no_store_one.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/no_store_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              SearchHeader(scaffoldKey: scaffoldKey),
              if (isLoading) const LoadingScreenBody(),
              if (!isLoading && !noStore)
                NoStoreWidgetTwo(
                  ontTap: () {
                    setState(() {
                      noStore = true;
                    });
                  },
                ),
              // if (noStore) const StoreSummary(),
              if (noStore) const NoStoreWidget()
            ],
          ),
        ),
      ),
    );
  }
}
