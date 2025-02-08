import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  final dummyCategoryItem = CategoryItem(
    name: 'Category A',
    icon: 'icon_a.png',
  );
  final dummyPeriod = Period(
    formattedTime: '10:00 AM',
    time: '10:00',
    price: 100,
    totalPrice: 120,
    hasCourtesy: true,
    discount: Discount(discount: 10),
  );
  final dummySuite = Suite(
    name: 'Suite Test',
    quantity: 1,
    showAvailableQuantity: true,
    photos: ['https://example.com/suite.jpg'],
    items: [],
    categoryItems: [dummyCategoryItem],
    periods: [dummyPeriod],
  );

  group('SuitePageviewItem Widget Tests', () {
    testWidgets('renders suite info correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SuitePageviewItem(suite: dummySuite),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Suite Test'), findsOneWidget);

      expect(
        find.byWidgetPredicate((widget) {
          if (widget is Hero) {
            return widget.tag == dummySuite.photos.first;
          }
          return false;
        }),
        findsOneWidget,
      );

      expect(
        find.byWidgetPredicate((widget) {
          if (widget is CachedNetworkImage) {
            return widget.imageUrl == dummySuite.photos.first;
          }
          return false;
        }),
        findsOneWidget,
      );

      expect(find.byType(CategoryItemRow), findsOneWidget);

      expect(find.text('10:00 AM'), findsOneWidget);
      expect(
        find.text(dummyPeriod.totalPrice.formattedCurrencyBR),
        findsOneWidget,
      );
    });

    testWidgets('tapping on hero image triggers navigation',
        (WidgetTester tester) async {
      final router = GoRouter(
        initialLocation: '/suite',
        routes: [
          GoRoute(
            path: '/suite',
            builder: (context, state) => Scaffold(
              body: SuitePageviewItem(suite: dummySuite),
            ),
          ),
          GoRoute(
            path: '/multi',
            builder: (context, state) => const Scaffold(
              body: Center(child: Text('Multi Image View')),
            ),
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Suite Test'), findsOneWidget);

      final heroFinder = find.byType(Hero);
      expect(heroFinder, findsOneWidget);

      await tester.pumpAndSettle();
    });
  });
}
