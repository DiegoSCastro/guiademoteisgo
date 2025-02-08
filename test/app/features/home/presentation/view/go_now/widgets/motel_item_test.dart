import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  final dummySuite = Suite(
    name: 'Suite Test',
    quantity: 1,
    showAvailableQuantity: true,
    photos: ['https://example.com/suite.jpg'],
    items: [],
    categoryItems: [],
    periods: [],
  );

  final dummyMotel = Motel(
    name: 'Test Motel',
    logo: 'https://example.com/logo.png',
    neighborhood: 'Downtown',
    distance: 12.34,
    favoriteCount: 10,
    suites: [dummySuite],
    reviewCount: 5,
    rating: 4.2,
  );

  group('MotelItem Widget Tests', () {
    testWidgets('renders motel info correctly', (WidgetTester tester) async {
      tester.view.physicalSize = const Size(800, 1200);
      tester.view.devicePixelRatio = 1.0;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelItem(dummyMotel),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Test Motel'), findsOneWidget);
      expect(find.text('12,34km - Downtown'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsOneWidget);

      expect(
        find.byWidgetPredicate((widget) {
          if (widget is DecoratedBox) {
            final decoration = widget.decoration;
            if (decoration is BoxDecoration && decoration.image != null) {
              final image = decoration.image!;
              final provider = image.image;
              if (provider is CachedNetworkImageProvider) {
                return provider.url == dummyMotel.logo;
              }
            }
          }
          return false;
        }),
        findsOneWidget,
      );

      expect(find.byType(PageView), findsOneWidget);
      expect(find.byType(SuitePageviewItem), findsOneWidget);
    });

    testWidgets('tapping favorite icon triggers SnackBar display',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(800, 1200);
      tester.view.devicePixelRatio = 1.0;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelItem(dummyMotel),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.favorite));
      await tester.pumpAndSettle();
      expect(find.byType(SnackBar), findsOneWidget);
    });
  });
}
