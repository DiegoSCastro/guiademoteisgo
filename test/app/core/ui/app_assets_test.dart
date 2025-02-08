import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('AppAssets', () {
    test('Deve conter o caminho correto para logoSplash', () {
      expect(AppAssets.logoSplash, 'assets/png/logo_splash.png');
    });
  });
}
