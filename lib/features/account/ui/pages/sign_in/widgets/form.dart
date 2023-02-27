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
          const AppTextFormField(
            labelText: 'Contraseña',
            obscureText: true,
            prefix: Icon(
              Icons.password_outlined,
              color: AppColors.color4,
            ),
            suffix: Icon(
              Icons.visibility_outlined,
              color: AppColors.color4,
            ),
          ),
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
        return const AppTextFormField(
          labelText: 'Correo / Usuario',
          prefix: Icon(
            Icons.mail_outline,
            color: AppColors.color4,
          ),
        );
      },
    );
  }
}
