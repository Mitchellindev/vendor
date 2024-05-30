import 'package:broadcaadvendor/features/auth/data/models/auth_user_model.dart';
import 'package:broadcaadvendor/features/auth/errors/auth_error.dart';
import 'package:dartz/dartz.dart';

typedef EitherAuthUserOrAuthError = Either<AuthError, AuthUserModel>;
typedef EitherTrueOrAuthError = Either<AuthError, bool>;

typedef EitherFutureTrueOrAuthError = Future<Either<AuthError, bool>>;

typedef FutureEitherAuthUserOrAuthError
    = Future<Either<AuthError, AuthUserModel>>;

typedef FutureEitherLocalAuthUserOrAuthError
    = Future<Either<AuthError, AuthUserModel>>;
