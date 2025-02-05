class MotelData {
  MotelData({
    required this.page,
    required this.itemsPerPage,
    required this.totalSuites,
    required this.totalMotels,
    required this.radius,
    required this.maxPages,
    required this.motels,
  });

  final int page;
  final int itemsPerPage;
  final int totalSuites;
  final int totalMotels;
  final double radius;
  final int maxPages;
  final List<String> motels;
}
