import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('ThemeConfig', () {
    final theme = ThemeConfig.theme;

    test('useMaterial3 is true', () {
      expect(theme.useMaterial3, isTrue);
    });

    test('appBarTheme is configured correctly', () {
      expect(theme.appBarTheme.backgroundColor, equals(AppColors.white));
      expect(theme.appBarTheme.foregroundColor, equals(AppColors.darkestGray));
      expect(theme.appBarTheme.surfaceTintColor, equals(Colors.transparent));
    });

    test('colorScheme is configured correctly', () {
      final colorScheme = theme.colorScheme;
      expect(colorScheme.primary, equals(AppColors.primary));
      expect(colorScheme.surface, equals(AppColors.backgroundLight));
      expect(colorScheme.surfaceContainerLow, equals(AppColors.gray));
      expect(
        colorScheme.surfaceContainerHighest,
        equals(AppColors.darkestGray),
      );
    });

    test('scaffoldBackgroundColor is configured correctly', () {
      expect(theme.scaffoldBackgroundColor, equals(AppColors.backgroundLight));
    });

    test('cardColor is configured correctly', () {
      expect(theme.cardColor, equals(AppColors.white));
    });

    test('primaryColorDark is configured correctly', () {
      expect(theme.primaryColorDark, equals(AppColors.primaryDark));
    });

    test('primaryColorLight is configured correctly', () {
      expect(theme.primaryColorLight, equals(AppColors.primaryLight));
    });

    test('dividerTheme is configured correctly', () {
      expect(theme.dividerTheme.color, equals(AppColors.gray));
    });

    test('drawerTheme is configured correctly', () {
      expect(
        theme.drawerTheme.backgroundColor,
        equals(AppColors.backgroundLight),
      );
    });

    test('ThemeData is correctly configured with all properties', () {
      expect(theme, isA<ThemeData>());
      expect(theme.useMaterial3, isTrue);
      expect(theme.appBarTheme.backgroundColor, equals(AppColors.white));
      expect(theme.appBarTheme.foregroundColor, equals(AppColors.darkestGray));
      expect(theme.appBarTheme.surfaceTintColor, equals(Colors.transparent));
      expect(theme.colorScheme.primary, equals(AppColors.primary));
      expect(theme.colorScheme.surface, equals(AppColors.backgroundLight));
      expect(theme.colorScheme.surfaceContainerLow, equals(AppColors.gray));
      expect(
        theme.colorScheme.surfaceContainerHighest,
        equals(AppColors.darkestGray),
      );
      expect(theme.scaffoldBackgroundColor, equals(AppColors.backgroundLight));
      expect(theme.cardColor, equals(AppColors.white));
      expect(theme.primaryColorDark, equals(AppColors.primaryDark));
      expect(theme.primaryColorLight, equals(AppColors.primaryLight));
      expect(theme.dividerTheme.color, equals(AppColors.gray));
      expect(
        theme.drawerTheme.backgroundColor,
        equals(AppColors.backgroundLight),
      );
    });
  });
}
