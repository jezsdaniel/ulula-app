import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';
import 'package:ulula/features/account/ui/pages/complete_sign_up/complete_sign_up.dart';

class VerifyButtons extends StatelessWidget {
  const VerifyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 54,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleIconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.color2,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                    ),
                    onPressed: () {
                      Navigator.push(context, CompleteSignUpPage.route());
                    },
                    child: const Text('Continuar'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 32,
          ),
        ],
      ),
    );
  }
}
