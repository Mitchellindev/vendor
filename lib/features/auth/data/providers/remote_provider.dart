import 'package:broadcaadvendor/core/network/api_endpoint.dart';
import 'package:broadcaadvendor/core/network/dio_client.dart';
import 'package:broadcaadvendor/core/utils/logger.dart';
import 'package:broadcaadvendor/core/utils/typedef.dart';
import 'package:broadcaadvendor/features/auth/data/models/auth_user_model.dart';
import 'package:dartz/dartz.dart';

abstract class RemoteAuthProvider {
  EitherAuthUserOrAuthError getCurrentUser();

  FutureEitherAuthUserOrAuthError signUp({
    required String email,
    required String password,
    required String userName,
    required String userCountry,
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
    required String userCountry,
    String userType = "vendor",
  }) async {
    try {
      final response = await DioClient.instance
          .post(path: RoutesAndPaths.signUp, queryParameters: {
        "platform": "android"
      }, data: {
        "email": email,
        "password": password,
        "user_country": userCountry,
        "username": userName,
        "user_type": userType,
      });
      logger.e(response);
    } catch (e) {
      logger.e(e);
    }

    return right(
        AuthUserModel(email: "email", userType: "Vendor", userCountry: ""));
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
