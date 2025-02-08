import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('PeriodModel', () {
    final dummyJsonWithDiscount = <String, dynamic>{
      'tempoFormatado': '12:00 PM',
      'tempo': '12:00',
      'valor': 100.0,
      'valorTotal': 120.0,
      'temCortesia': true,
      'desconto': {
        'desconto': 10.5,
      },
    };

    final dummyJsonWithoutDiscount = <String, dynamic>{
      'tempoFormatado': '1:00 PM',
      'tempo': '13:00',
      'valor': 150.0,
      'valorTotal': 160.0,
      'temCortesia': false,
      'desconto': null,
    };

    test('fromJson creates correct model when discount is provided', () {
      final model = PeriodModel.fromJson(dummyJsonWithDiscount);

      expect(model.formattedTime, equals('12:00 PM'));
      expect(model.time, equals('12:00'));
      expect(model.price, equals(100.0));
      expect(model.totalPrice, equals(120.0));
      expect(model.hasCourtesy, isTrue);
      expect(model.discount, isNotNull);
      expect(model.discount!.discount, equals(10.5));
    });

    test('fromJson creates correct model when discount is null', () {
      final model = PeriodModel.fromJson(dummyJsonWithoutDiscount);

      expect(model.formattedTime, equals('1:00 PM'));
      expect(model.time, equals('13:00'));
      expect(model.price, equals(150.0));
      expect(model.totalPrice, equals(160.0));
      expect(model.hasCourtesy, isFalse);
      expect(model.discount, isNull);
    });

    test('toEntity converts model to entity correctly (with discount)', () {
      final model = PeriodModel.fromJson(dummyJsonWithDiscount);
      final entity = model.toEntity;

      expect(entity.formattedTime, equals(model.formattedTime));
      expect(entity.time, equals(model.time));
      expect(entity.price, equals(model.price));
      expect(entity.totalPrice, equals(model.totalPrice));
      expect(entity.hasCourtesy, equals(model.hasCourtesy));
      expect(entity.discount, isNotNull);
      expect(entity.discount!.discount, equals(model.discount!.discount));
    });

    test('toEntity converts model to entity correctly (without discount)', () {
      final model = PeriodModel.fromJson(dummyJsonWithoutDiscount);
      final entity = model.toEntity;

      expect(entity.formattedTime, equals(model.formattedTime));
      expect(entity.time, equals(model.time));
      expect(entity.price, equals(model.price));
      expect(entity.totalPrice, equals(model.totalPrice));
      expect(entity.hasCourtesy, equals(model.hasCourtesy));
      expect(entity.discount, isNull);
    });

    test('toJson returns correct map when discount is provided', () {
      final model = PeriodModel.fromJson(dummyJsonWithDiscount);
      final json = model.toJson();

      expect(json['tempoFormatado'], equals('12:00 PM'));
      expect(json['tempo'], equals('12:00'));
      expect(json['valor'], equals(100.0));
      expect(json['valorTotal'], equals(120.0));
      expect(json['temCortesia'], equals(true));

      expect(json['desconto'], isA<DiscountModel>());
    });

    test('toJson returns correct map when discount is null', () {
      final model = PeriodModel.fromJson(dummyJsonWithoutDiscount);
      final json = model.toJson();

      expect(json['tempoFormatado'], equals('1:00 PM'));
      expect(json['tempo'], equals('13:00'));
      expect(json['valor'], equals(150.0));
      expect(json['valorTotal'], equals(160.0));
      expect(json['temCortesia'], equals(false));
      expect(json['desconto'], isNull);
    });
  });
}
