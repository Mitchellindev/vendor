import 'package:broadcaadvendor/core/network/api_endpoint.dart';
import 'package:broadcaadvendor/core/network/dio_client.dart';
import 'package:broadcaadvendor/core/utils/typedef.dart';
import 'package:broadcaadvendor/features/auth/data/enums/auth_enums.dart';
import 'package:broadcaadvendor/features/auth/data/errors/auth_error.dart';
import 'package:broadcaadvendor/features/auth/data/models/auth_user_model.dart';
import 'package:dartz/dartz.dart';

abstract class RemoteAuthProvider {
  EitherAuthUserOrAuthError getCurrentUser();

  FutureEitherAuthUserOrAuthError signUp({
    required String email,
    required String password,
    required String userName,
    String userType = "vendor",
  });

  FutureEitherAuthUserOrAuthError logIn({
    required String email,
    required String password,
    required String userName,
  });

  EitherFutureTrueOrAuthError logOut();
  EitherFutureTrueOrAuthError sendEmailVerification();
  EitherFutureTrueOrAuthError sendPasswordReset({required String toEmail});
}

class RemoteAuthProviderImplementation implements RemoteAuthProvider {
  EitherAuthUserOrAuthError get currentUser {
    return right(
        AuthUserModel(email: "email", userType: "Vendor", userCountry: ""));
  }

  @override
  FutureEitherAuthUserOrAuthError signUp({
    required String email,
    required String password,
    required String userName,
    String userType = "vendor",
  }) async {
    try {
      // final Address address = await LocationServiceClass.determinePosition();
      // logger.e(address.countryName);
      final response = await DioClient.instance
          .post(path: RoutesAndPaths.signUp, queryParameters: {
        "platform": "android"
      }, data: {
        "email": email,
        "password": password,
        "user_country": "Nigeria",
        "username": userName,
        "user_type": userType,
      });
      if (response["code"] != 200) {
        if (response["data"][0]["user_country"] != null) {
          return left(AuthError(
              errorType: AuthErrorType.signupError,
              message: "${response["data"][0]["user_country"]}"));
        }
      } else {
        return right(
            AuthUserModel(email: "email", userType: "Vendor", userCountry: ""));
      }
    } catch (e) {
      return left(AuthError(
          errorType: AuthErrorType.signupError, message: e.toString()));
    }
    return left(AuthError(
        errorType: AuthErrorType.signupError,
        message: "Uncaught Signup Error"));
  }

  @override
  FutureEitherAuthUserOrAuthError logIn({
    required String email,
    required String password,
    required String userName,
  }) async {
    return right(
        AuthUserModel(email: "email", userType: "Vendor", userCountry: ""));
  }

  @override
  EitherFutureTrueOrAuthError logOut() async {
    return right(true);
  }

  @override
  EitherFutureTrueOrAuthError sendEmailVerification() async {
    return right(true);
  }

  @override
  EitherFutureTrueOrAuthError sendPasswordReset(
      {required String toEmail}) async {
    return right(true);
  }

  @override
  EitherAuthUserOrAuthError getCurrentUser() {
    return currentUser;
  }
}
