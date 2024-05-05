import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  late GlobalKey<FormFieldState> searchKey;

  @override
  void initState() {
    searchKey = GlobalKey<FormFieldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                size: 25,
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Transform.scale(
              scaleY: .8,
              child: InputFieldWidget(
                  validator: (p0) {
                    return null;
                  },
                  verticalContentPadding: 0,
                  prefixicon: Image.asset(
                    "assets/images/search.png",
                  ),
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 16,
                  fontWeight: FontWeight.w500,
                  hintText: "Search",
                  onChanged: (val) {},
                  textFieldkey: searchKey),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.notifications);
              },
              child: Image.asset(
                "assets/images/bell.png",
                width: 24,
              ),
            )
          ],
        ),
      ],
    );
  }
}
