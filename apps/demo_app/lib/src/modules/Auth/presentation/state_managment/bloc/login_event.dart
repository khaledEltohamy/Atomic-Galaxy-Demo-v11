// GENERATED FILE - DO NOT EDIT BY HAND.
part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object?> get props => const [];
}

final class FetchLoginEvent extends LoginEvent {
  const FetchLoginEvent({required this.request});
  final LoginRequestEntity request;
  @override
  List<Object?> get props => [request];
}
