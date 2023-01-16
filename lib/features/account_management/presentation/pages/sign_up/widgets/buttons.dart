import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.10),
      ),
      child: Column(
        children: [
          Container(
            height: 54,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const DottedIconButton(
                  icon: Icon(
                    Icons.add,
                    color: AppColors.color4,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
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
