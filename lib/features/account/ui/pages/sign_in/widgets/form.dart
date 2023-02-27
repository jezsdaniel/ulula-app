import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';
import 'package:ulula/features/account/ui/bloc/sign_in/sign_in_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const _UsernameField(),
          const SizedBox(height: 10),
          const _PasswordField(),
          const SizedBox(height: 6),
          Text(
            '¿Olvidaste tu contraseña?',
            style: AppTextStyles.regular12.copyWith(
              color: AppColors.color1,
            ),
          ),
        ],
      ),
    );
  }
}

class _UsernameField extends StatefulWidget {
  const _UsernameField();

  @override
  State<_UsernameField> createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<_UsernameField> {
  final _usernameFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _usernameFocusNode.addListener(() {
      if (!_usernameFocusNode.hasFocus) {
        context.read<SignInBloc>().add(SignInUsernameUnfocused());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return AppTextFormField(
          labelText: 'Correo / Usuario',
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          errorMessage: state.username.invalid ? state.username.error : null,
          onChanged: (value) {
            context.read<SignInBloc>().add(
                  SignInUsernameChanged(
                    username: value,
                  ),
                );
          },
          prefix: const Icon(
            Icons.mail_outline,
            color: AppColors.color4,
          ),
        );
      },
    );
  }
}

class _PasswordField extends StatefulWidget {
  const _PasswordField();

  @override
  State<_PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<_PasswordField> {
  final _passwordFocusNode = FocusNode();
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context.read<SignInBloc>().add(SignInPasswordUnfocused());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return AppTextFormField(
          labelText: 'Contraseña',
          obscureText: _obscureText,
          onChanged: (value) {
            context.read<SignInBloc>().add(
                  SignInPasswordChanged(
                    password: value,
                  ),
                );
          },
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (value) {
            context.read<SignInBloc>().add(SignInFormSubmitted());
          },
          errorMessage: state.password.invalid ? state.password.error : null,
          prefix: const Icon(
            Icons.password_outlined,
            color: AppColors.color4,
          ),
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: const Icon(
              Icons.visibility_outlined,
              color: AppColors.color4,
            ),
          ),
        );
      },
    );
  }
}
