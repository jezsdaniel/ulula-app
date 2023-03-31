import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/circle_icon_button.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: AppColors.color2,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.color1,
                ),
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/img/user-picture-placeholder.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Frank Sera',
                            style: AppTextStyles.bold20.copyWith(
                              color: AppColors.color5,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.verified_outlined,
                          color: AppColors.color1,
                        ),
                      ],
                    ),
                    Text(
                      '@seracreativo',
                      style: AppTextStyles.regular14.copyWith(
                        color: AppColors.color5,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 16,
              spacing: 28,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 88,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: AppColors.color5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.whatsappIconOutlined,
                          color: AppColors.color2,
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'WA',
                          style: AppTextStyles.regular16.copyWith(
                            color: AppColors.color2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Wrap(
                  runSpacing: 12,
                  spacing: 6,
                  children: [
                    CircleIconButton(
                      size: 36,
                      icon: SvgPicture.asset(
                        AppAssets.twitterIconOutlined,
                        color: AppColors.color1,
                        height: 24,
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    CircleIconButton(
                      size: 36,
                      icon: SvgPicture.asset(
                        AppAssets.instagramIconOutlined,
                        color: AppColors.color1,
                        height: 24,
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    CircleIconButton(
                      size: 36,
                      icon: SvgPicture.asset(
                        AppAssets.facebookIconOutlined,
                        color: AppColors.color1,
                        height: 24,
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    CircleIconButton(
                      size: 36,
                      icon: SvgPicture.asset(
                        AppAssets.youtubeIconOutlined,
                        color: AppColors.color1,
                        height: 24,
                        width: 24,
                      ),
                      onPressed: () {},
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
