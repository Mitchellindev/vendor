// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:broadcaadvendor/features/auth/data/enums/auth_enums.dart';

class AuthError {
  final AuthErrorType errorType;
  final String message;
  AuthError({
    required this.errorType,
    required this.message,
  });
}
