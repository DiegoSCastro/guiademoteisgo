import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

class TestHomeRemoteDatasourceSuccess implements HomeRemoteDatasource {
  @override
  Future<MotelResponseModel> fetchMotels() async {
    final json = <String, dynamic>{
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
    return MotelResponseModel.fromJson(json);
  }
}

class TestHomeRemoteDatasourceFailure implements HomeRemoteDatasource {
  @override
  Future<MotelResponseModel> fetchMotels() async {
    throw Exception('Test error');
  }
}

void main() {
  group('HomeRepositoryImpl using real response', () {
    test('returns Right(MotelData) when datasource returns valid response',
        () async {
      final datasource = TestHomeRemoteDatasourceSuccess();
      final repository = HomeRepositoryImpl(remoteDatasource: datasource);

      // Act:
      final result = await repository.fetchMotels();

      expect(result.isRight(), isTrue);
      result.match(
        (l) => fail('Expected Right but got Left: $l'),
        (r) {
          expect(r.page, equals(1));
          expect(r.itemsPerPage, equals(10));
          expect(r.totalSuites, equals(5));
          expect(r.totalMotels, equals(3));
          expect(r.radius, equals(10.5));
          expect(r.maxPages, equals(1));
          expect(r.motels, isEmpty);
        },
      );
    });

    test('returns Left(Exception) when datasource throws an exception',
        () async {
      final datasource = TestHomeRemoteDatasourceFailure();
      final repository = HomeRepositoryImpl(remoteDatasource: datasource);

      // Act:
      final result = await repository.fetchMotels();

      expect(result.isLeft(), isTrue);
      result.match(
        (l) => expect(l.toString(), contains('Test error')),
        (r) => fail('Expected Left but got Right: $r'),
      );
    });
  });
}
