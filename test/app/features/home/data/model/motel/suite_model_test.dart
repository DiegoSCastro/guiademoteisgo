import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('SuiteModel', () {
    final dummyJson = <String, dynamic>{
      'nome': 'Test Suite',
      'qtd': 2,
      'exibirQtdDisponiveis': true,
      'fotos': ['photo1.jpg', 'photo2.jpg'],
      'itens': [
        {
          'nome': 'Test Item',
        },
      ],
      'categoriaItens': [
        {
          'nome': 'Category 1',
          'icone': 'icon1.png',
        },
      ],
      'periodos': [
        {
          'tempoFormatado': '12:00 PM',
          'tempo': '12:00',
          'valor': 100.0,
          'valorTotal': 120.0,
          'temCortesia': true,
          'desconto': {
            'desconto': 10.5,
          },
        }
      ],
    };

    test('fromJson creates correct model', () {
      final model = SuiteModel.fromJson(dummyJson);

      expect(model.name, equals('Test Suite'));
      expect(model.quantity, equals(2));
      expect(model.showAvailableQuantity, isTrue);
      expect(model.photos, equals(['photo1.jpg', 'photo2.jpg']));

      expect(model.items.length, equals(1));
      expect(model.items.first.name, equals('Test Item'));

      expect(model.categoryItems.length, equals(1));
      expect(model.categoryItems.first.name, equals('Category 1'));
      expect(model.categoryItems.first.icon, equals('icon1.png'));

      expect(model.periods.length, equals(1));
      final period = model.periods.first;
      expect(period.formattedTime, equals('12:00 PM'));
      expect(period.time, equals('12:00'));
      expect(period.price, equals(100.0));
      expect(period.totalPrice, equals(120.0));
      expect(period.hasCourtesy, isTrue);
      expect(period.discount, isNotNull);
      expect(period.discount!.discount, equals(10.5));
    });

    test('toEntity converts model to entity correctly', () {
      final model = SuiteModel.fromJson(dummyJson);
      final entity = model.toEntity;

      expect(entity.name, equals(model.name));
      expect(entity.quantity, equals(model.quantity));
      expect(entity.showAvailableQuantity, equals(model.showAvailableQuantity));
      expect(entity.photos, equals(model.photos));

      expect(entity.items.length, equals(model.items.length));
      expect(entity.items.first.name, equals(model.items.first.name));

      expect(entity.categoryItems.length, equals(model.categoryItems.length));
      expect(
        entity.categoryItems.first.name,
        equals(model.categoryItems.first.name),
      );
      expect(
        entity.categoryItems.first.icon,
        equals(model.categoryItems.first.icon),
      );

      expect(entity.periods.length, equals(model.periods.length));
      final periodEntity = entity.periods.first;
      final periodModel = model.periods.first;
      expect(periodEntity.formattedTime, equals(periodModel.formattedTime));
      expect(periodEntity.time, equals(periodModel.time));
      expect(periodEntity.price, equals(periodModel.price));
      expect(periodEntity.totalPrice, equals(periodModel.totalPrice));
      expect(periodEntity.hasCourtesy, equals(periodModel.hasCourtesy));
      if (periodModel.discount != null) {
        expect(
          periodEntity.discount?.discount,
          equals(periodModel.discount!.discount),
        );
      } else {
        expect(periodEntity.discount, isNull);
      }
    });

    test('toJson returns correct map', () {
      const model = SuiteModel(
        name: 'Test Suite',
        quantity: 2,
        showAvailableQuantity: true,
        photos: ['photo1.jpg', 'photo2.jpg'],
        items: [ItemModel(name: 'Test Item')],
        categoryItems: [
          CategoryItemModel(
            name: 'Category 1',
            icon: 'icon1.png',
          ),
        ],
        periods: [
          PeriodModel(
            formattedTime: '12:00 PM',
            time: '12:00',
            price: 100,
            totalPrice: 120,
            hasCourtesy: true,
            discount: DiscountModel(discount: 10.5),
          ),
        ],
      );
      final json = model.toJson();

      expect(json['nome'], equals('Test Suite'));
      expect(json['qtd'], equals(2));
      expect(json['exibirQtdDisponiveis'], equals(true));
      expect(json['fotos'], equals(['photo1.jpg', 'photo2.jpg']));

      expect(json['itens'], isA<List>());
      expect((json['itens'] as List).length, equals(1));

      expect(json['categoriaItens'], isA<List>());
      expect((json['categoriaItens'] as List).length, equals(1));

      expect(json['periodos'], isA<List>());
      expect((json['periodos'] as List).length, equals(1));
    });
  });
}
