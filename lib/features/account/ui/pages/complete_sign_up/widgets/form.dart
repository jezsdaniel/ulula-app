import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';

class SignUpCompleteForm extends StatelessWidget {
  const SignUpCompleteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const AppTextFormField(
            labelText: 'Correo',
            enabled: false,
            initialValue: 'seracreativo@gmail.com',
            prefix: Icon(
              Icons.mail_outline,
              color: AppColors.color3,
            ),
            suffix: Icon(
              Icons.edit_outlined,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 10),
          const AppTextFormField(
            labelText: 'Usuario',
            enabled: false,
            initialValue: '@seracreativo',
            prefix: Icon(
              Icons.alternate_email_outlined,
              color: AppColors.color3,
            ),
            suffix: Icon(
              Icons.edit_outlined,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 10),
          const AppTextFormField(
            labelText: 'Contraseña',
            enabled: false,
            initialValue: 'MiContraseña123',
            prefix: Icon(
              Icons.password_outlined,
              color: AppColors.color3,
            ),
            suffix: Icon(
              Icons.edit_outlined,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 50),
          AppTextFormField(
            labelText: 'Whatsapp',
            enabled: false,
            initialValue: '+53 5555 9643',
            prefix: SvgPicture.asset(
              AppAssets.whatsappIconOutlined,
              color: AppColors.color3,
              height: 24,
              width: 24,
            ),
            suffix: const Icon(
              Icons.edit_outlined,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 10),
          AppTextFormField(
            labelText: 'Telegram ID',
            enabled: false,
            initialValue: '12350500145',
            prefix: SvgPicture.asset(
              AppAssets.telegramIconOutlined,
              color: AppColors.color3,
              height: 24,
              width: 24,
            ),
            suffix: const Icon(
              Icons.edit_outlined,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 50),
          AppTextFormField(
            enabled: false,
            initialValue: '@seracreativo',
            prefix: SvgPicture.asset(
              AppAssets.instagramIconOutlined,
              color: AppColors.color4,
              height: 24,
              width: 24,
            ),
            suffix: const Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 10),
          AppTextFormField(
            enabled: false,
            initialValue: '@seracreativo',
            prefix: SvgPicture.asset(
              AppAssets.facebookIconOutlined,
              color: AppColors.color4,
              height: 24,
              width: 24,
            ),
            suffix: const Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 10),
          AppTextFormField(
            enabled: false,
            initialValue: '@seracreativo',
            prefix: SvgPicture.asset(
              AppAssets.twitterIconOutlined,
              color: AppColors.color4,
              height: 24,
              width: 24,
            ),
            suffix: const Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 10),
          AppTextFormField(
            enabled: false,
            initialValue: '@seracreativo',
            prefix: SvgPicture.asset(
              AppAssets.youtubeIconOutlined,
              color: AppColors.color4,
              height: 24,
              width: 24,
            ),
            suffix: const Icon(
              Icons.check_circle_outline,
              color: AppColors.color1,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
