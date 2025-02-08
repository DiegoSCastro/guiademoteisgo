import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

sealed class ThemeConfig {
  static final theme = ThemeData(
    useMaterial3: true,
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
