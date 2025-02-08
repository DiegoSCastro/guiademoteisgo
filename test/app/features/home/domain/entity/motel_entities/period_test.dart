import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('Period entity tests', () {
    test('should create a Period with correct values when discount is null',
        () {
      final period = Period(
        formattedTime: '12:00 PM',
        time: '12:00',
        price: 100,
        totalPrice: 120,
        hasCourtesy: true,
        discount: null,
      );

      expect(period.formattedTime, equals('12:00 PM'));
      expect(period.time, equals('12:00'));
      expect(period.price, equals(100.0));
      expect(period.totalPrice, equals(120.0));
      expect(period.hasCourtesy, isTrue);
      expect(period.discount, isNull);
    });

    test('should create a Period with discount (dummy example)', () {
      final dummyDiscount = Discount(discount: 10);

      final period = Period(
        formattedTime: '1:00 PM',
        time: '13:00',
        price: 150,
        totalPrice: 140,
        hasCourtesy: false,
        discount: dummyDiscount,
      );

      expect(period.formattedTime, equals('1:00 PM'));
      expect(period.time, equals('13:00'));
      expect(period.price, equals(150.0));
      expect(period.totalPrice, equals(140.0));
      expect(period.hasCourtesy, isFalse);
      expect(period.discount, equals(dummyDiscount));
    });
  });
}
