import 'package:guiademoteisgo/app/app.dart';

class Period {
  Period({
    required this.formattedTime,
    required this.time,
    required this.price,
    required this.totalPrice,
    required this.hasCourtesy,
    required this.discount,
  });

  final String formattedTime;
  final String time;
  final double price;
  final double totalPrice;
  final bool hasCourtesy;
  final Discount? discount;
}
