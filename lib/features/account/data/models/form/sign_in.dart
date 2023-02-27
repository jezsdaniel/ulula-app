import 'package:formz/formz.dart';

class SignInUsername extends FormzInput<String, String> {
  const SignInUsername.pure() : super.pure('');

  const SignInUsername.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value?.isNotEmpty ?? true) {
      return null;
    } else {
      return 'El nombre de usuario es requerido';
    }
  }
}

class SignInPassword extends FormzInput<String, String> {
  const SignInPassword.pure() : super.pure('');

  const SignInPassword.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value?.isNotEmpty ?? true) {
      return null;
    } else {
      return 'La contraseña es requerida';
    }
  }
}
