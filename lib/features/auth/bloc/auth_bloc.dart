// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:broadcaadvendor/features/auth/data/errors/auth_error.dart';
import 'package:broadcaadvendor/features/auth/data/models/auth_user_model.dart';
import 'package:broadcaadvendor/features/auth/data/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/local_auth_error.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repo;
  AuthBloc({required this.repo}) : super(AuthStateIsNotLoggedIn()) {
    on<AuthEventGetCurrentUser>((event, emit) async {
      emit(const AuthStateIsLoading());
    });

    on<AuthEventSignup>((event, emit) async {
      emit(const AuthStateIsLoading());
      // final String country = LocationServiceClass.country;
      // logger.e(country);
      final String email = event.email;
      final String password = event.password;
      final String userName = event.userName;

      final res = await repo.signUp(
        email: email,
        password: password,
        userName: userName,
      );
      res.fold((l) => emit(AuthStateAuthError(authError: l)),
          (r) => emit(AuthStateIsRegistered(authUser: r)));
    });

    on<AuthEventLogin>((event, emit) async {
      emit(const AuthStateIsLoading());
      final String email = event.email;
      final String password = event.password;
    });

    on<AuthEventLogout>((event, emit) async {
      emit(const AuthStateIsLoading());
    });

    on<AuthEventSendEmailVerification>((event, emit) async {
      emit(const AuthStateIsLoading());
    });

    on<AuthEventSendPasswordReset>((event, emit) async {
      emit(const AuthStateIsLoading());
    });

    on<AuthEventAuthWithBiometrics>((event, emit) async {
      emit(const AuthStateIsLoading());
    });
  }
}
