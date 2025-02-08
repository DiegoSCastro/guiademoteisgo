import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('MotelResponseModel', () {
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

    test('fromJson creates correct model', () {
      final model = MotelResponseModel.fromJson(dummyJson);

      expect(model.success, isTrue);

      expect(model.data.page, equals(1));
      expect(model.data.itemsPerPage, equals(10));
      expect(model.data.totalSuites, equals(5));
      expect(model.data.totalMotels, equals(3));
      expect(model.data.radius, equals(10.5));
      expect(model.data.maxPages, equals(1));
      expect(model.data.motels, isEmpty);

      expect(model.message, equals(['Success']));
    });

    test('toJson returns correct map', () {
      final model = MotelResponseModel.fromJson(dummyJson);
      final json = model.toJson();

      expect(json['sucesso'], equals(true));

      expect(json['mensagem'], equals(['Success']));
    });
  });
}
