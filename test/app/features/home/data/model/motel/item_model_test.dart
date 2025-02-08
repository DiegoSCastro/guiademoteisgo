import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('ItemModel', () {
    final dummyJson = <String, dynamic>{
      'nome': 'Test Item',
    };

    test('fromJson creates correct model', () {
      final model = ItemModel.fromJson(dummyJson);

      expect(model.name, equals('Test Item'));
    });

    test('toEntity converts model to entity correctly', () {
      final model = ItemModel.fromJson(dummyJson);

      final entity = model.toEntity;

      expect(entity.name, equals(model.name));
    });

    test('toJson returns correct map', () {
      const model = ItemModel(name: 'Test Item');

      final json = model.toJson();

      expect(json['nome'], equals('Test Item'));
    });
  });
}
