import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/dashboard/ui/pages/dashboard/dashboard.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: const BoxDecoration(
        color: AppColors.color5,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.widgets_outlined,
              color: AppColors.color3,
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                DashboardPage.route(),
                (route) => false,
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.add_outlined,
              color: AppColors.color3,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: AppColors.color3,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
