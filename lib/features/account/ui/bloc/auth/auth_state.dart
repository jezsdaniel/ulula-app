part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthStatus.unknown,
    this.user = UserProfile.empty,
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated(UserProfile user)
      : this._(status: AuthStatus.authenticated, user: user);

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  final AuthStatus status;
  final UserProfile user;

  @override
  List<Object> get props => [];
}
