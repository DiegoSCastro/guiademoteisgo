import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('DiscountModel', () {
    final dummyJson = <String, dynamic>{
      'desconto': 12.5,
    };

    test('fromJson creates correct model', () {
      final model = DiscountModel.fromJson(dummyJson);

      expect(model.discount, equals(12.5));
    });

    test('toEntity converts model to entity correctly', () {
      final model = DiscountModel.fromJson(dummyJson);

      final entity = model.toEntity;

      expect(entity.discount, equals(model.discount));
    });

    test('toJson returns correct map', () {
      const model = DiscountModel(discount: 12.5);

      final json = model.toJson();

      expect(json['desconto'], equals(12.5));
    });
  });
}
