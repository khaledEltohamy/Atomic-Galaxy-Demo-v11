// GENERATED FILE - DO NOT EDIT BY HAND.
part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object?> get props => const [];
}
final class InitialLoginState extends LoginState {
  const InitialLoginState();
}
final class LoadingLoginState extends LoginState {
  const LoadingLoginState();
}
final class SuccessLoginState extends LoginState {
  const SuccessLoginState(this.response);
  final LoginResponseEntity response;
  @override
  List<Object?> get props => [response];
}
final class ErrorLoginState extends LoginState {
  const ErrorLoginState(this.error);
  final ErrorModel error;
  @override
  List<Object?> get props => [error];
}
