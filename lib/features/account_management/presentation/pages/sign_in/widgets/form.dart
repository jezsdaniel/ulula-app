import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

import 'package:ulula/core/widgets/widgets.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const AppTextFormField(
            labelText: 'Correo / Usuario',
            prefix: Icon(
              Icons.mail_outline,
              color: AppColors.color4,
            ),
          ),
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
