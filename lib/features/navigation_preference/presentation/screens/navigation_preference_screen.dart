import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/constants/app_colors.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/navigation_preference/presentation/widgets/checkbox_list_widget.dart';
import 'package:flutter/material.dart';

class NavigationPreferenceScreen extends StatelessWidget {
  const NavigationPreferenceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> preferenceList = [
      {'title': 'Dashboard'},
      {'title': 'Wallet'},
      {'title': 'Store'},
      {'title': 'Service'},
      {'title': 'My Profile'},
      {'title': 'Earnings'},
      {'title': 'My Orders'},
      {'title': 'Pending Items'},
    ];

    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "NavigationPreference",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 11),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.inputGrey),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Use Default',
                      fontSize: 18.width,
                      fontWeight: FontWeight.w400,
                    ),
                    Transform.scale(
                      scale: 1.3,
                      child: Radio(
                        value: false,
                        groupValue: 1,
                        onChanged: (val) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .56,
                child: ListView(
                  children: List.generate(
                    preferenceList.length,
                    (index) => CheckBoxListTileWidget(
                      title: preferenceList[index]['title'],
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: PrimaryButton(
                  label: 'Update', onPressed: () {}, isEnabled: true),
            ),
          ],
        ),
      ),
    );
  }
}
