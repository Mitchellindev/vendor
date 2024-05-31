import 'package:broadcaadvendor/core/connection/network_info.dart';
import 'package:broadcaadvendor/core/utils/typedef.dart';
import 'package:broadcaadvendor/features/auth/data/providers/local_provider.dart';
import 'package:broadcaadvendor/features/auth/data/providers/remote_provider.dart';

class AuthRepository {
  final RemoteAuthProvider authProvider;
  final AuthUserLocalDataSource localAuthUserSource;
  final NetworkInfo networkInfo;
  AuthRepository({
    required this.authProvider,
    required this.localAuthUserSource,
    required this.networkInfo,
  });

  FutureEitherAuthUserOrAuthError signUp({
    required String email,
    required String password,
    required String userName,
    required String userCountry,
    String userType = "vendor",
  }) async {
    final user = authProvider.signUp(
        userCountry: userCountry,
        email: email,
        password: password,
        userName: userName);
    await localAuthUserSource.saveUser(user);
    return user;
  }

  FutureEitherAuthUserOrAuthError getcurrentUser() async {
    if (await networkInfo.isConnected!) {
      return authProvider.getCurrentUser();
    }

    return localAuthUserSource.getUser();
  }

  FutureEitherAuthUserOrAuthError logIn(
      {required String email,
      required String password,
      required String userName}) async {
    final user = authProvider.logIn(
        email: email, password: password, userName: userName);
    await localAuthUserSource.saveUser(user);
    return user;
  }

  EitherFutureTrueOrAuthError logOut() async {
    final isLoggedOut = authProvider.logOut();
    await localAuthUserSource.deleteUser();
    return isLoggedOut;
  }

  EitherFutureTrueOrAuthError sendEmailVerification() {
    return authProvider.sendEmailVerification();
  }

  EitherFutureTrueOrAuthError sendPasswordReset({required String toEmail}) {
    return authProvider.sendPasswordReset(toEmail: toEmail);
  }
}
