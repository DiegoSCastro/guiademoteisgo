import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get formattedCurrencyBR {
    final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: r'R$');
    return formatter.format(this);
  }

  String get toKmString {
    final formattedValue = toString().replaceAll('.', ',');
    return '${formattedValue}km';
  }
}
