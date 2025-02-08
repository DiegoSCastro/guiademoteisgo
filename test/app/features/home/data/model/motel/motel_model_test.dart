import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:guiademoteisgo/app/features/home/data/model/motel/motel_model.dart';

void main() {
  group('MotelModel', () {
    final dummyJson = <String, dynamic>{
      'fantasia': 'Test Motel',
      'logo': 'https://example.com/logo.png',
      'bairro': 'Downtown',
      'distancia': 1.5,
      'qtdFavoritos': 10,
      'suites': [],
      'qtdAvaliacoes': 5,
      'media': 4.2,
    };

    test('fromJson creates correct model', () {
      final model = MotelModel.fromJson(dummyJson);

      expect(model.name, equals('Test Motel'));
      expect(model.logo, equals('https://example.com/logo.png'));
      expect(model.neighborhood, equals('Downtown'));
      expect(model.distance, equals(1.5));
      expect(model.favoriteCount, equals(10));
      expect(model.suites, isEmpty);
      expect(model.reviewCount, equals(5));
      expect(model.rating, equals(4.2));
    });

    test('toEntity converts model to entity correctly', () {
      final model = MotelModel.fromJson(dummyJson);
      final entity = model.toEntity;

      expect(entity.name, equals('Test Motel'));
      expect(entity.logo, equals('https://example.com/logo.png'));
      expect(entity.neighborhood, equals('Downtown'));
      expect(entity.distance, equals(1.5));
      expect(entity.favoriteCount, equals(10));
      expect(entity.suites, isEmpty);
      expect(entity.reviewCount, equals(5));
      expect(entity.rating, equals(4.2));
    });

    test('toJson returns correct map', () {
      const model = MotelModel(
        name: 'Test Motel',
        logo: 'https://example.com/logo.png',
        neighborhood: 'Downtown',
        distance: 1.5,
        favoriteCount: 10,
        suites: [],
        reviewCount: 5,
        rating: 4.2,
      );

      final json = model.toJson();

      expect(json['fantasia'], equals('Test Motel'));
      expect(json['logo'], equals('https://example.com/logo.png'));
      expect(json['bairro'], equals('Downtown'));
      expect(json['distancia'], equals(1.5));
      expect(json['qtdFavoritos'], equals(10));
      expect(json['suites'], equals([]));
      expect(json['qtdAvaliacoes'], equals(5));
      expect(json['media'], equals(4.2));
    });
  });
}
