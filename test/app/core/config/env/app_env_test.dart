import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('AppEnv', () {
    test('baseUrl is a String', () {
      expect(AppEnv.baseUrl, isA<String>());
    });

    test('baseUrl returns empty string if not defined in environment', () {
      expect(AppEnv.baseUrl, equals(''));
    });
  });
}
