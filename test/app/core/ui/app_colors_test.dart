import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('AppColors', () {
    test('primary should be Color(0xFFD11521)', () {
      expect(AppColors.primary, equals(const Color(0xFFD11521)));
    });

    test('primaryLight should be Color(0xFFFF5B46)', () {
      expect(AppColors.primaryLight, equals(const Color(0xFFFF5B46)));
    });

    test('primaryDark should be Color(0xFFB8000B)', () {
      expect(AppColors.primaryDark, equals(const Color(0xFFB8000B)));
    });

    test('backgroundLight should be Color(0xFFF7F9FB)', () {
      expect(AppColors.backgroundLight, equals(const Color(0xFFF7F9FB)));
    });

    test('white should be Color(0xFFFFFFFF)', () {
      expect(AppColors.white, equals(const Color(0xFFFFFFFF)));
    });

    test('black should be Color(0xFF000000)', () {
      expect(AppColors.black, equals(const Color(0xFF000000)));
    });

    test('gray should be Color(0xFFC2C2C2)', () {
      expect(AppColors.gray, equals(const Color(0xFFC2C2C2)));
    });

    test('darkGray should be Color(0xFFA0A2A4)', () {
      expect(AppColors.darkGray, equals(const Color(0xFFA0A2A4)));
    });

    test('darkestGray should be Color(0xFF48494B)', () {
      expect(AppColors.darkestGray, equals(const Color(0xFF48494B)));
    });

    test('splashColor should be Color(0xFFCD0F14)', () {
      expect(AppColors.splashColor, equals(const Color(0xFFCD0F14)));
    });

    // Cores para Warning
    test('warning should be Color(0xFFFFB600)', () {
      expect(AppColors.warning, equals(const Color(0xFFFFB600)));
    });

    test('warningLight should be Color(0xFFFFEDC0)', () {
      expect(AppColors.warningLight, equals(const Color(0xFFFFEDC0)));
    });

    test('warningMedium should be Color(0xFFAD7C00)', () {
      expect(AppColors.warningMedium, equals(const Color(0xFFAD7C00)));
    });

    test('warningDark should be Color(0xFF443101)', () {
      expect(AppColors.warningDark, equals(const Color(0xFF443101)));
    });
  });
}
