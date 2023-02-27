import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/dotted_icon_button.dart';

class CompleteSignUpHeader extends StatelessWidget {
  const CompleteSignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.color1,
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      AppAssets.userPicturePlaceholder,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff000000).withOpacity(0.6),
                      ),
                      child: const Icon(
                        Icons.filter_center_focus,
                        color: AppColors.color5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 50,
          ),
          DottedIconButton(
            size: 44,
            icon: const Icon(
              Icons.person_outline,
              color: AppColors.color5,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: double.infinity,
            height: 5,
          ),
          Text(
            'Frank Sera',
            style: AppTextStyles.bold20.copyWith(
              color: AppColors.color5,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 5,
          ),
          Text(
            'Agrega información a tu biografía.',
            style: AppTextStyles.regular14.copyWith(
              color: AppColors.color3,
            ),
          ),
        ],
      ),
    );
  }
}
