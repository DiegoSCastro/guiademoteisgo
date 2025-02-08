import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('CategoryItemModel', () {
    final dummyJson = <String, dynamic>{
      'nome': 'Test Category',
      'icone': 'test_icon.png',
    };

    test('fromJson creates correct model', () {
      final model = CategoryItemModel.fromJson(dummyJson);

      expect(model.name, equals('Test Category'));
      expect(model.icon, equals('test_icon.png'));
    });

    test('toEntity converts model to entity correctly', () {
      final model = CategoryItemModel.fromJson(dummyJson);

      final entity = model.toEntity;

      expect(entity.name, equals(model.name));
      expect(entity.icon, equals(model.icon));
    });

    test('toJson returns the correct map', () {
      const model = CategoryItemModel(
        name: 'Test Category',
        icon: 'test_icon.png',
      );

      final json = model.toJson();

      expect(json['nome'], equals('Test Category'));
      expect(json['icone'], equals('test_icon.png'));
    });
  });
}
