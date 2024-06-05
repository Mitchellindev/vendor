import 'package:broadcaadvendor/features/store/presentation/widgets/store_summary_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/logo_header.dart';
import '../widgets/search_header.dart';

class StoreFrontScreen extends StatefulWidget {
  const StoreFrontScreen({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<StoreFrontScreen> createState() => _StoreFrontScreenState();
}

class _StoreFrontScreenState extends State<StoreFrontScreen> {
  bool noStore = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 2), () {
    //   setState(() {
    //     isLoading = false;
    //   });
    // });

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const LogoHeader(),
            SearchHeader(
              scaffoldKey: widget.scaffoldKey,
              withSearch: noStore,
            ),
            // if (isLoading) const LoadingScreenBody(),

            const StoreSummary(),
            // if (noStore) const NoStoreWidget()
          ],
        ),
      ),
    );
  }
}
