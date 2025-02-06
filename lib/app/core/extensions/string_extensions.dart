extension StringExtensions on String {
  String get formattedHour {
    final timeInt = int.tryParse(this);
    final sulfix = timeInt == 1 ? 'hora' : 'horas';
    return '$this $sulfix';
  }

  String get formattedCurrency {
    final timeInt = int.tryParse(this);
    final sulfix = timeInt == 1 ? 'hora' : 'horas';
    return '$this $sulfix';
  }
}
