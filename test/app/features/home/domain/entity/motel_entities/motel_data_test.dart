import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('MotelData entity tests', () {
    test('should create a MotelData with correct values', () {
      final dummySuite = Suite(
        name: 'Test Suite',
        quantity: 1,
        showAvailableQuantity: true,
        photos: ['photo1.jpg'],
        items: [],
        categoryItems: [],
        periods: [],
      );

      final dummyMotel = Motel(
        name: 'Test Motel',
        logo: 'https://example.com/logo.png',
        neighborhood: 'Downtown',
        distance: 1.5,
        favoriteCount: 10,
        suites: [dummySuite],
        reviewCount: 5,
        rating: 4.2,
      );

      final dummyMotelData = MotelData(
        page: 1,
        itemsPerPage: 10,
        totalSuites: 5,
        totalMotels: 1,
        radius: 10.5,
        maxPages: 1,
        motels: [dummyMotel],
      );

      expect(dummyMotelData.page, equals(1));
      expect(dummyMotelData.itemsPerPage, equals(10));
      expect(dummyMotelData.totalSuites, equals(5));
      expect(dummyMotelData.totalMotels, equals(1));
      expect(dummyMotelData.radius, equals(10.5));
      expect(dummyMotelData.maxPages, equals(1));
      expect(dummyMotelData.motels, equals([dummyMotel]));
    });
  });
}
