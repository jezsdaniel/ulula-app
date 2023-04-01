import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/home/ui/pages/home/home.dart';

class DashboardBottom extends StatelessWidget {
  const DashboardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: const BoxDecoration(
        color: AppColors.color2,
      ),
      child: Container(
        width: double.infinity,
        height: 72,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home_outlined,
                color: AppColors.color4,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil<void>(
                  context,
                  HomePage.route(),
                      (route) => false,
                );
              },
            ),
            Row(
              children: [
                const IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: AppColors.color1,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.flag_outlined,
                    color: AppColors.color4,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_outlined,
                    color: AppColors.color3,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            IconButton(
              icon: const Icon(
                Icons.tips_and_updates_outlined,
                color: AppColors.color4,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
