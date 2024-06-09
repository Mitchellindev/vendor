import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/validator/validator.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late GlobalKey<FormFieldState> oldPasswordKey;
  late GlobalKey<FormFieldState> newPasswordKey;
  late GlobalKey<FormFieldState> confirmPasswordKey;

  bool oldPasswordIsValid = false;
  bool newPasswordIsValid = false;
  bool confirmPasswordIsValid = false;

  @override
  void initState() {
    oldPasswordKey = GlobalKey<FormFieldState>();
    newPasswordKey = GlobalKey<FormFieldState>();
    confirmPasswordKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Account Settings",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InputFieldWidget(
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Old Password",
                validator: (p0) {
                  final oldPasswordState = Validator.validatePassword(
                      oldPasswordKey.currentState?.value);
                  return oldPasswordState;
                },
                onChanged: (val) {
                  setState(() {
                    oldPasswordIsValid =
                        oldPasswordKey.currentState!.validate();
                  });
                },
                textFieldkey: oldPasswordKey,
              ),
              InputFieldWidget(
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "New Password",
                validator: (p0) {
                  final newPasswordState = Validator.validatePassword(
                      newPasswordKey.currentState?.value);
                  return newPasswordState;
                },
                onChanged: (val) {
                  setState(() {
                    newPasswordIsValid =
                        newPasswordKey.currentState!.validate();
                  });
                },
                textFieldkey: newPasswordKey,
              ),
              InputFieldWidget(
                enabledBorderRadius: 5,
                hintColor: const Color.fromARGB(120, 58, 58, 58),
                hintSize: 18,
                hintText: "Confirm Password",
                validator: (p0) {
                  final confirmPasswordState = Validator.validatePassword(
                      confirmPasswordKey.currentState?.value);
                  return confirmPasswordState;
                },
                onChanged: (val) {
                  setState(() {
                    confirmPasswordIsValid =
                        confirmPasswordKey.currentState!.validate();
                  });
                },
                textFieldkey: confirmPasswordKey,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: PrimaryButton(
                  label: "Change",
                  onPressed: () {},
                  isEnabled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
