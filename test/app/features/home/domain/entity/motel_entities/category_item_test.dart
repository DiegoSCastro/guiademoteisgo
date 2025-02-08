import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('CategoryItem entity tests', () {
    test('should create a CategoryItem with correct values', () {
      final categoryItem = CategoryItem(
        name: 'Category 1',
        icon: 'icon_path.png',
      );

      expect(categoryItem.name, equals('Category 1'));
      expect(categoryItem.icon, equals('icon_path.png'));
    });
  });
}
