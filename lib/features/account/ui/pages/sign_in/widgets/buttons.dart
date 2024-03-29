import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';
import 'package:ulula/features/account/ui/bloc/sign_in/sign_in_bloc.dart';
import 'package:ulula/features/account/ui/pages/sign_up/sign_up.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

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
                DottedIconButton(
                  icon: const Icon(
                    Icons.add,
                    color: AppColors.color1,
                  ),
                  onPressed: () {
                    Navigator.push(context, SignUpPage.route());
                  },
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
                      FocusScope.of(context).unfocus();
                      context.read<SignInBloc>().add(SignInFormSubmitted());
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
