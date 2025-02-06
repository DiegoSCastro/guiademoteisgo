import 'package:flutter/material.dart';

sealed class AppColors {
  static const primary = Color(0xFFD11521);
  static const primaryLight = Color(0xFFFF5B46);
  static const primaryDark = Color(0xFFB8000B);
  static const backgroundLight = Color(0xFFF7F9FB);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const gray = Color(0xFFC2C2C2);
  static const darkGray = Color(0xFFA0A2A4);
  static const darkestGray = Color(0xFF48494B);

  ///  Success
  static const Color success = Color(0xFF00C98C);
  static const Color successLight = Color(0xFFCDF6E9);
  static const Color successMedium = Color(0xFF02885F);
  static const Color successDark = Color(0xFF00281C);

  /// Error
  static const Color error = Color(0xFFFA3D13);
  static const Color errorLight = Color(0xFFFFDCD4);
  static const Color errorMedium = Color(0xFF9C2207);
  static const Color errorDark = Color(0xFF3F0C01);

  /// Warning
  static const Color warning = Color(0xFFFFB600);
  static const Color warningLight = Color(0xFFFFEDC0);
  static const Color warningMedium = Color(0xFFAD7C00);
  static const Color warningDark = Color(0xFF443101);

  /// Brand Primary
  static const Color info = Color(0xFF441BFF);
  static const Color infoLight = Color(0xFFE3E5FF);
  static const Color infoMedium = Color(0xFF0412B5);
  static const Color infoDark = Color(0xFF0B0944);
}
