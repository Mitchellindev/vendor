import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class UpdateAddressScreen extends StatelessWidget {
  const UpdateAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Update Address",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TextWidget(
                    textAlign: TextAlign.start,
                    text: "Enter a New Address",
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InputFieldWidget(
                  prefixicon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/location.png",
                      width: 2,
                    ),
                  ),
                  hintColor: Theme.of(context).colorScheme.primary,
                  hintText: "Ikoyi, Lagos state",
                  onChanged: (val) {},
                  enabledBorderRadius: 10,
                )
              ],
            ),
            Column(
              children: [
                PrimaryButton(label: "Save", onPressed: () {}, isEnabled: true),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButtonWidget(
                  label: "Cancel",
                  onTap: () {},
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
