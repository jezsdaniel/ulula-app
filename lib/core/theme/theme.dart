import 'package:flutter/material.dart';
import 'package:ulula/core/constants/colors.dart';
import 'package:ulula/core/constants/text_styles.dart';

final appTheme = ThemeData(
  primaryColor: AppColors.color1,
  scaffoldBackgroundColor: AppColors.color6,
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.color1,
    secondary: AppColors.color2,
  ),
  useMaterial3: true,
  fontFamily: 'OpenSans',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.color1,
      backgroundColor: AppColors.color1,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: const CircleBorder(),
      textStyle: AppTextStyles.semiBold16,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.color1,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: const CircleBorder(),
      textStyle: AppTextStyles.semiBold16,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.color1,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: const CircleBorder(),
      textStyle: AppTextStyles.semiBold16,
    ),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: false,
  ),
);
