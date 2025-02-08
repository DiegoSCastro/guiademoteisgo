import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('Item entity tests', () {
    test('should create an Item with the correct name', () {
      final item = Item(name: 'Test Item');

      expect(item.name, equals('Test Item'));
    });
  });
}
