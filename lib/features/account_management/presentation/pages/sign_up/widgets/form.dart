import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

import 'package:ulula/core/widgets/widgets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          AppTextFormField(
            labelText: 'Nombre',
            prefix: Icon(
              Icons.drive_file_rename_outline,
              color: AppColors.color4,
            ),
            suffix: Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          SizedBox(height: 10),
          AppTextFormField(
            labelText: 'Correo',
            prefix: Icon(
              Icons.mail_outline,
              color: AppColors.color4,
            ),
            suffix: Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          SizedBox(height: 10),
          AppTextFormField(
            labelText: 'Usuario',
            prefix: Icon(
              Icons.alternate_email_outlined,
              color: AppColors.color4,
            ),
            suffix: Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          SizedBox(height: 10),
          AppTextFormField(
            labelText: 'Contraseña',
            prefix: Icon(
              Icons.password_outlined,
              color: AppColors.color4,
            ),
            suffix: Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
        ],
      ),
    );
  }
}
