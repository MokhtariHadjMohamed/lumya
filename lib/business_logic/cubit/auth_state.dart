part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoaded extends AuthState {
  AuthLoaded();
}

class AuthSuccess extends AuthState {
  final Map<String, dynamic> user;
  AuthSuccess(this.user);
}

class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
}