part of 'sign_in_bloc.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInUsernameChanged extends SignInEvent {
  const SignInUsernameChanged({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

class SignInUsernameUnfocused extends SignInEvent {}

class SignInPasswordChanged extends SignInEvent {
  const SignInPasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class SignInPasswordUnfocused extends SignInEvent {}

class SignInFormSubmitted extends SignInEvent {}
