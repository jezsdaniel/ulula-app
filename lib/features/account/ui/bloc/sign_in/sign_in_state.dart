part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  const SignInState({
    this.username = const SignInUsername.pure(),
    this.password = const SignInPassword.pure(),
    this.formStatus = FormzStatus.pure,
  });

  final SignInUsername username;
  final SignInPassword password;
  final FormzStatus formStatus;

  @override
  List<Object> get props => [
        username,
        password,
        formStatus,
      ];

  SignInState copyWith({
    SignInUsername? username,
    SignInPassword? password,
    FormzStatus? formStatus,
  }) {
    return SignInState(
      username: username ?? this.username,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
