import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/account/ui/bloc/auth/auth_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const MainPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color2,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthBloc>().add(AuthLogoutRequested());
          },
          child: Text(
            'Salir',
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.color6,
            ),
          ),
        ),
      ),
    );
  }
}
