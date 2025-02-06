import 'package:guiademoteisgo/app/app.dart';

class Suite {
  Suite({
    required this.name,
    required this.quantity,
    required this.showAvailableQuantity,
    required this.photos,
    required this.items,
    required this.categoryItems,
    required this.periods,
  });

  final String name;
  final int quantity;
  final bool showAvailableQuantity;
  final List<String> photos;
  final List<Item> items;
  final List<CategoryItem> categoryItems;
  final List<Period> periods;
}
