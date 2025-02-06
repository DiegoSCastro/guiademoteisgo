import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class ThemeConfig {
  ThemeConfig._();

  static final theme = ThemeData(
    useMaterial3: true,
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryDark,
        selectedBackgroundColor: AppColors.white,
        selectedForegroundColor: AppColors.black,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
    ),
  );
}
