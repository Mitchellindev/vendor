import 'package:broadcaadvendor/core/widgets/loading_widget.dart';
import 'package:broadcaadvendor/core/widgets/snackbar.dart';
import 'package:broadcaadvendor/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/enums/enums.dart';
import '../../../../app/widgets/oauth_button.dart';
import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/validator/validator.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/input_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late GlobalKey<FormFieldState> emailKey;
  late GlobalKey<FormFieldState> passwordKey;
  late GlobalKey<FormFieldState> nameKey;
  bool obscureText = true;
  bool emailIsValid = false;

  bool nameIsValid = false;
  bool passwordIsValid = false;

  @override
  void initState() {
    emailKey = GlobalKey<FormFieldState>();
    passwordKey = GlobalKey<FormFieldState>();
    nameKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final ColorScheme theme = Theme.of(context).colorScheme;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthStateIsLoading) {
          setState(() {
            isLoading = true;
          });
        }
        if (state is AuthStateIsRegistered) {
          Navigator.pushNamed(context, Routes.otpVerification);
          setState(() {
            isLoading = false;
          });
        }
        if (state is AuthStateAuthError) {
          InfoSnackBar.showErrorSnackBar(context,
              "${state.authError.errorType.name}: ${state.authError.message}");
          setState(() {
            isLoading = false;
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Image.asset(
                          "assets/images/auth_logo.png",
                          width: 350,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          text: "Sign Up",
                          color: theme.primary,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                        InputFieldWidget(
                            validator: (p0) {
                              final nameState = Validator.validateText(
                                  nameKey.currentState?.value, "Full Name");
                              return nameState;
                            },
                            enabledBorderRadius: 5,
                            hintColor: const Color.fromARGB(120, 58, 58, 58),
                            hintSize: 18,
                            hintText: "Full Name",
                            onChanged: (val) {
                              setState(() {
                                nameIsValid = nameKey.currentState!.validate();
                              });
                            },
                            textFieldkey: nameKey),
                        InputFieldWidget(
                            validator: (p0) {
                              final emailState = Validator.validateEmail(
                                  emailKey.currentState?.value);
                              return emailState;
                            },
                            enabledBorderRadius: 5,
                            hintColor: const Color.fromARGB(120, 58, 58, 58),
                            hintSize: 18,
                            hintText: "Email/Phone number",
                            onChanged: (val) {
                              setState(() {
                                emailIsValid =
                                    emailKey.currentState!.validate();
                              });
                            },
                            textFieldkey: emailKey),
                        InputFieldWidget(
                          enabledBorderRadius: 5,
                          obscureText: obscureText,
                          hintColor: const Color.fromARGB(120, 58, 58, 58),
                          hintSize: 18,
                          hintText: "Password",
                          validator: (p0) {
                            final passwordState = Validator.validatePassword(
                                passwordKey.currentState?.value);
                            return passwordState;
                          },
                          onChanged: (val) {
                            setState(() {
                              passwordIsValid =
                                  passwordKey.currentState!.validate();
                            });
                          },
                          textFieldkey: passwordKey,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(obscureText
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          label: "Sign Up",
                          onPressed: () async {
                            context.read<AuthBloc>().add(
                                  AuthEventSignup(
                                    email: emailKey.currentState!.value,
                                    password: passwordKey.currentState!.value,
                                    userName: nameKey.currentState!.value,
                                  ),
                                );
                          },
                          isEnabled:
                              emailIsValid && passwordIsValid && nameIsValid,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          text: "Forgot Password?",
                          onTap: () {
                            Navigator.pushNamed(context, Routes.forgotPassword);
                          },
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffF49F1C),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextWidget(
                          text: "OR",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        OAuthButton(
                          type: ButtonType.google,
                          onPressed: () {},
                          label: "Continue with Google",
                        ),
                        OAuthButton(
                          type: ButtonType.facebook,
                          onPressed: () {},
                          label: "Continue with Facebook",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TextWidget(
                              text: "Already have an account?",
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            TextWidget(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              text: "Login",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffF49F1C),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                if (isLoading)
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(133, 0, 0, 0)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 300,
                        width: 300,
                        child: const LoadingWidget(
                          label: "Loading...",
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
