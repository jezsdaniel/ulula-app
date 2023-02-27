part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthStatusChanged extends AuthEvent {
  const AuthStatusChanged({required this.status, required this.user});

  final AuthStatus status;
  final UserProfile user;

  @override
  List<Object> get props => [status];
}

class AuthUpdateUser extends AuthEvent {
  const AuthUpdateUser({required this.user});

  final UserProfile user;

  @override
  List<Object> get props => [user];
}

class AuthLogoutRequested extends AuthEvent {}
