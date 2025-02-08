import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class MockRestClient extends Mock implements RestClient {}

void main() {
  group('HomeRemoteDatasourceImpl', () {
    late MockRestClient mockRestClient;
    late HomeRemoteDatasourceImpl datasource;

    setUp(() {
      mockRestClient = MockRestClient();
      datasource = HomeRemoteDatasourceImpl(restClient: mockRestClient);
    });

    test('fetchMotels returns a valid MotelResponseModel on success', () async {
      final dummyJson = <String, dynamic>{
        'sucesso': true,
        'data': {
          'pagina': 1,
          'qtdPorPagina': 10,
          'totalSuites': 5,
          'totalMoteis': 3,
          'raio': 10.5,
          'maxPaginas': 1,
          'moteis': [],
        },
        'mensagem': ['Success'],
      };

      when(() => mockRestClient.get(any())).thenAnswer((_) async => dummyJson);

      final response = await datasource.fetchMotels();

      expect(response.success, isTrue);
      expect(response.data.page, equals(1));
      expect(response.data.itemsPerPage, equals(10));
      expect(response.data.totalSuites, equals(5));
      expect(response.data.totalMotels, equals(3));
      expect(response.data.radius, equals(10.5));
      expect(response.data.maxPages, equals(1));
      expect(response.data.motels, isEmpty);
      expect(response.message, equals(['Success']));
    });

    test('fetchMotels throws an exception when RestClient.get fails', () async {
      when(() => mockRestClient.get(any()))
          .thenThrow(Exception('Network error'));

      expect(() async => datasource.fetchMotels(), throwsA(isA<Exception>()));
    });
  });
}
