import '../../../../app/widgets/primary_button.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../auth/presentation/widgets/input_field_widget.dart';
import '../../../store/presentation/widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class UpdateProfileImageAndNameScreen extends StatelessWidget {
  const UpdateProfileImageAndNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Update Picture and  Name",
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
                    text: "Enter a New Profile Picture and Name",
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/vendor_img.png",
                      width: 100,
                    ),
                    Image.asset(
                      "assets/images/profile_edit.png",
                      width: 30,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ],
                ),
                InputFieldWidget(
                  hintColor: Theme.of(context).colorScheme.primary,
                  hintText: "Sanni Oluwatoyin",
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
