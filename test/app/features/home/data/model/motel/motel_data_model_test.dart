import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('MotelDataModel', () {
    final dummyJson = <String, dynamic>{
      'pagina': 1,
      'qtdPorPagina': 10,
      'totalSuites': 5,
      'totalMoteis': 3,
      'raio': 10.5,
      'maxPaginas': 1,
      'moteis': [
        {
          'fantasia': 'Test Motel',
          'logo': 'https://example.com/logo.png',
          'bairro': 'Downtown',
          'distancia': 1.5,
          'qtdFavoritos': 10,
          'suites': [],
          'qtdAvaliacoes': 5,
          'media': 4.2,
        }
      ],
    };

    test('fromJson creates correct model', () {
      final model = MotelDataModel.fromJson(dummyJson);

      expect(model.page, equals(1));
      expect(model.itemsPerPage, equals(10));
      expect(model.totalSuites, equals(5));
      expect(model.totalMotels, equals(3));
      expect(model.radius, equals(10.5));
      expect(model.maxPages, equals(1));
      expect(model.motels, isA<List<MotelModel>>());
      expect(model.motels.length, equals(1));

      final motelModel = model.motels.first;
      expect(motelModel.name, equals('Test Motel'));
      expect(motelModel.logo, equals('https://example.com/logo.png'));
      expect(motelModel.neighborhood, equals('Downtown'));
      expect(motelModel.distance, equals(1.5));
      expect(motelModel.favoriteCount, equals(10));
      expect(motelModel.suites, isEmpty);
      expect(motelModel.reviewCount, equals(5));
      expect(motelModel.rating, equals(4.2));
    });

    test('toEntity converts model to entity correctly', () {
      final model = MotelDataModel.fromJson(dummyJson);
      final entity = model.toEntity;

      expect(entity.page, equals(model.page));
      expect(entity.itemsPerPage, equals(model.itemsPerPage));
      expect(entity.totalSuites, equals(model.totalSuites));
      expect(entity.totalMotels, equals(model.totalMotels));
      expect(entity.radius, equals(model.radius));
      expect(entity.maxPages, equals(model.maxPages));
      expect(entity.motels.length, equals(model.motels.length));

      expect(entity.motels.first.name, equals('Test Motel'));
      expect(entity.motels.first.logo, equals('https://example.com/logo.png'));
      expect(entity.motels.first.neighborhood, equals('Downtown'));
      expect(entity.motels.first.distance, equals(1.5));
      expect(entity.motels.first.favoriteCount, equals(10));
      expect(entity.motels.first.suites, isEmpty);
      expect(entity.motels.first.reviewCount, equals(5));
      expect(entity.motels.first.rating, equals(4.2));
    });

    test('toJson returns correct map', () {
      final model = MotelDataModel.fromJson(dummyJson);
      final json = model.toJson();

      expect(json['pagina'], equals(1));
      expect(json['qtdPorPagina'], equals(10));
      expect(json['totalSuites'], equals(5));
      expect(json['totalMoteis'], equals(3));
      expect(json['raio'], equals(10.5));
      expect(json['maxPaginas'], equals(1));

      expect(json['moteis'], isA<List>());
      final motelsJson = json['moteis'] as List;
      expect(motelsJson.length, equals(1));
    });
  });
}
