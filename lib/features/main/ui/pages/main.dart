import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';

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
        child: Text(
          'Main Page',
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.color6,
          ),
        ),
      ),
    );
  }
}
