import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('Motel entity tests', () {
    test('should create a Motel with correct values', () {
      final dummySuite = Suite(
        name: 'Test Suite',
        quantity: 1,
        showAvailableQuantity: true,
        photos: ['photo1.png'],
        items: [],
        categoryItems: [],
        periods: [],
      );

      final motel = Motel(
        name: 'Test Motel',
        logo: 'https://example.com/logo.png',
        neighborhood: 'Downtown',
        distance: 1.5,
        favoriteCount: 10,
        suites: [dummySuite],
        reviewCount: 5,
        rating: 4.2,
      );

      expect(motel.name, equals('Test Motel'));
      expect(motel.logo, equals('https://example.com/logo.png'));
      expect(motel.neighborhood, equals('Downtown'));
      expect(motel.distance, equals(1.5));
      expect(motel.favoriteCount, equals(10));
      expect(motel.suites, equals([dummySuite]));
      expect(motel.reviewCount, equals(5));
      expect(motel.rating, equals(4.2));
    });
  });
}
