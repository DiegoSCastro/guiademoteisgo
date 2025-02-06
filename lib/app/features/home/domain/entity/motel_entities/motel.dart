import 'package:guiademoteisgo/app/app.dart';

class Motel {
  Motel({
    required this.name,
    required this.logo,
    required this.neighborhood,
    required this.distance,
    required this.favoriteCount,
    required this.suites,
    required this.reviewCount,
    required this.rating,
  });

  final String name;
  final String logo;
  final String neighborhood;
  final double distance;
  final int favoriteCount;
  final List<Suite> suites;
  final int reviewCount;
  final double rating;
}
