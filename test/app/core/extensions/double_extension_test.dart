import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:intl/intl.dart';

void main() {
  group('DoubleExtension', () {
    test('formattedCurrencyBR returns correctly formatted currency in pt_BR',
        () {
      const value = 1234.56;
      final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: r'R$');
      final expected = formatter.format(value);

      expect(value.formattedCurrencyBR, equals(expected));
    });

    test('formattedCurrencyBR handles zero correctly', () {
      const value = 0.0;
      final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: r'R$');
      final expected = formatter.format(value);

      expect(value.formattedCurrencyBR, equals(expected));
    });

    test('toKmString converts double to string with comma and "km" suffix', () {
      const value = 12.34;
      const expected = '12,34km';

      expect(value.toKmString, equals(expected));
    });

    test('toKmString works correctly for whole numbers', () {
      const value = 15.0;
      const expected = '15,0km';

      expect(value.toKmString, equals(expected));
    });
  });
}
