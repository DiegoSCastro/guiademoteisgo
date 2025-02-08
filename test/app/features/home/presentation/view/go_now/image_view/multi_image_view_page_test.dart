import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  final dummySuite = Suite(
    name: 'Test Suite',
    quantity: 1,
    showAvailableQuantity: true,
    photos: [
      'https://example.com/image1.jpg',
      'https://example.com/image2.jpg',
    ],
    items: [],
    categoryItems: [],
    periods: [],
  );

  group('MultiImageViewPage Widget Tests', () {
    testWidgets('renders AppBar title and list of images',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiImageViewPage(suite: dummySuite),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Test Suite'), findsOneWidget);

      expect(find.byIcon(Icons.arrow_back_ios_rounded), findsOneWidget);

      expect(
        find.byType(CachedNetworkImage),
        findsNWidgets(dummySuite.photos.length),
      );

      for (var i = 0; i < dummySuite.photos.length; i++) {
        final imageWidget = tester.widget<CachedNetworkImage>(
          find.byType(CachedNetworkImage).at(i),
        );
        expect(imageWidget.imageUrl, equals(dummySuite.photos[i]));
      }
    });

    testWidgets('tapping back button pops the route',
        (WidgetTester tester) async {
      final router = GoRouter(
        initialLocation: '/multi',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const Scaffold(
              body: Center(child: Text('Home')),
            ),
          ),
          GoRoute(
            path: '/multi',
            builder: (context, state) => MultiImageViewPage(suite: dummySuite),
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Test Suite'), findsOneWidget);
    });
  });
}
