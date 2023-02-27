import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';

class VerifyHeader extends StatelessWidget {
  const VerifyHeader({super.key});

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
              Icons.celebration_outlined,
              color: AppColors.color5,
            ),
            const SizedBox(width: 5),
            Text(
              'Activa tu cuenta',
              style: AppTextStyles.bold20.copyWith(
                color: AppColors.color5,
              ),
            ),
          ],
        ),
        Text(
          'Se envió el código de activación a',
          style: AppTextStyles.regular14.copyWith(
            color: AppColors.color3,
          ),
        ),
        Text(
          'user@gmail.com',
          style: AppTextStyles.regular14.copyWith(
            color: AppColors.color4,
          ),
        ),
      ],
    );
  }
}
