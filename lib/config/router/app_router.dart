import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/error_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/forgot_password.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/login_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/otp_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/reset_password.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/signup_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/verification_successful.dart';
import 'package:broadcaadvendor/features/home/presentation/screens/home.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/edit_store_screen.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/first_store_creation.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/store_creation_form_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case Routes.verificationSuccessful:
        return MaterialPageRoute(
          builder: (_) => const VerificationSuccessfulScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.firstStoreCreation:
        return MaterialPageRoute(
          builder: (_) => const FirstStoreCreationScreen(),
        );
      case Routes.storeCreationForm:
        return MaterialPageRoute(
          builder: (_) => const StoreCreationFormScreeen(),
        );
      case Routes.editStore:
        return MaterialPageRoute(
          builder: (_) => const EditStoreScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
