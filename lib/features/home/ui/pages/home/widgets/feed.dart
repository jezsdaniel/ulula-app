import 'package:flutter/material.dart';

import 'package:sticky_headers/sticky_headers.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/home/ui/pages/home/widgets/widgets.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return StickyHeader(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.color5,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Dom, 16 Dic',
                  style: AppTextStyles.regular16.copyWith(
                    color: AppColors.color2,
                  ),
                ),
              ),
            ],
          ),
          content: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              children: const [
                EventItem(),
                SizedBox(height: 10),
                EventItem(),
                SizedBox(height: 10),
                EventItem(),
              ],
            ),
          ),
        );
      },
    );
  }
}
