import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class AppSnackbar {
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
