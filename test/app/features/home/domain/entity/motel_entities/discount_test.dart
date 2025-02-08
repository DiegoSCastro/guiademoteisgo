import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('Discount entity tests', () {
    test('should create a Discount with the correct discount value', () {
      final discountInstance = Discount(discount: 15.5);

      expect(discountInstance.discount, equals(15.5));
    });
  });
}
