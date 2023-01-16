import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';

class VerifyForm extends StatelessWidget {
  const VerifyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const AppTextFormField(
            obscureText: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            '1:00',
            style: AppTextStyles.regular16.copyWith(
              color: AppColors.color1,
            ),
          ),
        ],
      ),
    );
  }
}
