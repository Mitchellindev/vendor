import 'package:broadcaadvendor/core/constants/app_colors.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectCountryScreen extends StatefulWidget {
  const SelectCountryScreen({super.key});

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  int selected = 0;

  Widget customRadioWidget(String image, String label, int index) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      leading: Image.asset(image),
      title: TextWidget(
        text: label,
        fontSize: 21.width,
        fontWeight: FontWeight.w400,
      ),
      trailing: (selected == index)
          ? Image.asset('assets/images/check-circle.png')
          : const SizedBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Select Country",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.inputGrey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/search.png'),
                    SizedBox(width: 5.width),
                    const TextWidget(
                      text: 'Search for a country',
                      color: AppColors.inputGrey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.height),
              customRadioWidget('assets/images/flag.png', 'Nigeria', 1),
              customRadioWidget('assets/images/flag.png', 'USA', 2),
              customRadioWidget('assets/images/flag.png', 'UK', 3),
              customRadioWidget('assets/images/flag.png', 'Ghana', 4),
              customRadioWidget('assets/images/flag.png', 'Egypt', 5),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       children: [
              // Image.asset('assets/images/flag.png'),
              //         SizedBox(width: 10.width),
              // TextWidget(
              //   text: 'Nigeria',
              //   fontSize: 21.width,
              //   fontWeight: FontWeight.w400,
              // ),
              //       ],
              //     ),
              // Image.asset('assets/images/check-circle.png'),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
