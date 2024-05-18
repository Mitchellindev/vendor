import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../auth/presentation/widgets/input_field_widget.dart';
import '../../../store/presentation/widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class UpdateUserPhoneNumberScreen extends StatelessWidget {
  const UpdateUserPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Update Phone Number",
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
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TextWidget(
                    text: "Enter a New Phone Number Country Code",
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InputFieldWidget(
                  hintColor: Theme.of(context).colorScheme.primary,
                  hintText: "+2349014138734",
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
