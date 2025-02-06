import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class AppSnackbar {
  static void info(
    BuildContext context, {
    required String message,
    IconData? icon,
    EdgeInsets? margin,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: margin,
        padding: EdgeInsets.zero,
        behavior: behavior,
        backgroundColor: AppColors.infoLight,
        content: SnackbarContent(
          message: message,
          icon: icon ?? Icons.info_outline,
          primaryColor: AppColors.info,
          secondaryColor: AppColors.infoMedium,
          iconColor: AppColors.infoMedium,
        ),
      ),
    );
  }

  static void success(
    BuildContext context, {
    required String message,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.successLight,
        content: SnackbarContent(
          message: message,
          icon: Icons.check,
          primaryColor: AppColors.success,
          secondaryColor: AppColors.successMedium,
          iconColor: AppColors.successMedium,
        ),
      ),
    );
  }

  static void error(
    BuildContext context, {
    required String message,
    bool isFloating = false,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.errorLight,
        content: SnackbarContent(
          message: message,
          icon: Icons.close,
          primaryColor: AppColors.error,
          secondaryColor: AppColors.errorMedium,
          iconColor: AppColors.errorMedium,
        ),
        behavior:
            isFloating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      ),
    );
  }

  static void warning(
    BuildContext context, {
    required String message,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.warningLight,
        content: SnackbarContent(
          message: message,
          icon: Icons.warning_amber_rounded,
          primaryColor: AppColors.warning,
          secondaryColor: AppColors.warningMedium,
          iconColor: AppColors.warningMedium,
        ),
      ),
    );
  }

  static void pending(BuildContext context) =>
      warning(context, message: 'Em desenvolvimento');
}
