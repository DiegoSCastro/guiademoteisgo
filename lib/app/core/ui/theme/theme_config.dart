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
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.darkestGray,
      surfaceTintColor: Colors.transparent,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      surface: AppColors.backgroundLight,
      surfaceContainerLow: AppColors.gray,
      surfaceContainerHighest: AppColors.darkestGray,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.white,
    primaryColorDark: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryLight,
    dividerTheme: const DividerThemeData(color: AppColors.gray),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.backgroundLight,
    ),
  );
}
