import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/account/ui/pages/sign_in/sign_in.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              color: AppColors.color5,
            ),
            const SizedBox(width: 5),
            Text(
              'Regístrate',
              style: AppTextStyles.bold20.copyWith(
                color: AppColors.color5,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, SignInPage.route());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¿Ya tienes cuenta? Inicia Sesión',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.color3,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.login,
                color: AppColors.color1,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
