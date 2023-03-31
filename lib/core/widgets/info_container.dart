import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });

  final Widget leading;
  final String title;
  final String subtitle1;
  final String subtitle2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56),
        border: Border.all(
          color: AppColors.color4,
        ),
      ),
      child: Row(
        children: [
          leading,
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyles.semiBold16.copyWith(
                    color: AppColors.color3,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        subtitle1,
                        style: AppTextStyles.regular12.copyWith(
                          color: AppColors.color4,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      subtitle2,
                      style: AppTextStyles.regular12.copyWith(
                        color: AppColors.color4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
