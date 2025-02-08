import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('Suite entity tests', () {
    test('should construct with given values', () {
      final dummyItem = Item(name: '');
      final dummyCategoryItem = CategoryItem(name: '', icon: '');
      final dummyPeriod = Period(
        formattedTime: '',
        time: '',
        price: 1,
        totalPrice: 1,
        hasCourtesy: true,
        discount: null,
      );

      final suite = Suite(
        name: 'Test Suite',
        quantity: 10,
        showAvailableQuantity: true,
        photos: ['photo1.jpg', 'photo2.jpg'],
        items: [dummyItem],
        categoryItems: [dummyCategoryItem],
        periods: [dummyPeriod],
      );

      expect(suite.name, equals('Test Suite'));
      expect(suite.quantity, equals(10));
      expect(suite.showAvailableQuantity, isTrue);
      expect(suite.photos, equals(['photo1.jpg', 'photo2.jpg']));
      expect(suite.items, equals([dummyItem]));
      expect(suite.categoryItems, equals([dummyCategoryItem]));
      expect(suite.periods, equals([dummyPeriod]));
    });
  });
}
