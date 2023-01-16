import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/account_management/presentation/pages/sign_up/sign_up.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

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
              Icons.login_outlined,
              color: AppColors.color5,
            ),
            const SizedBox(width: 5),
            Text(
              'Inicia Sesión',
              style: AppTextStyles.bold20.copyWith(
                color: AppColors.color5,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, SignUpPage.route());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¿No tienes cuenta? Crea una',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.color3,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.add,
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
