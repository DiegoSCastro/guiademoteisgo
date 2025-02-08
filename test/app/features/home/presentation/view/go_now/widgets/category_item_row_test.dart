import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

class MockAppCard extends StatelessWidget {
  const MockAppCard({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}

void main() {
  group('CategoryItemRow Widget Test', () {
    testWidgets('Renders category items correctly',
        (WidgetTester tester) async {
      final categoryItems = [
        CategoryItem(name: 'Item 1', icon: 'https://example.com/icon1.png'),
        CategoryItem(name: 'Item 2', icon: 'https://example.com/icon2.png'),
        CategoryItem(name: 'Item 3', icon: 'https://example.com/icon3.png'),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(300, 800)),
            child: CategoryItemRow(categoryItems: categoryItems),
          ),
        ),
      );

      expect(find.byType(CachedNetworkImage), findsNWidgets(3));

      expect(find.text('ver todos'), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_down_rounded), findsOneWidget);

      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(800, 800)),
            child: CategoryItemRow(categoryItems: categoryItems),
          ),
        ),
      );
      expect(find.byType(CachedNetworkImage), findsNWidgets(3));
      expect(find.text('ver todos'), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_down_rounded), findsOneWidget);
    });

    testWidgets('Handles empty category items list',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CategoryItemRow(categoryItems: []),
        ),
      );

      expect(find.text('ver todos'), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_down_rounded), findsOneWidget);
    });

    testWidgets('Taps "ver todos" text', (WidgetTester tester) async {
      final categoryItems = [
        CategoryItem(name: 'Item 1', icon: 'https://example.com/icon1.png'),
      ];
      await tester.pumpWidget(
        MaterialApp(
          home: CategoryItemRow(categoryItems: categoryItems),
        ),
      );

      await tester.tap(find.text('ver todos'));
    });

    testWidgets('Taps down arrow icon', (WidgetTester tester) async {
      final categoryItems = [
        CategoryItem(name: 'Item 1', icon: 'https://example.com/icon1.png'),
      ];
      await tester.pumpWidget(
        MaterialApp(
          home: CategoryItemRow(categoryItems: categoryItems),
        ),
      );

      await tester.tap(find.byIcon(Icons.keyboard_arrow_down_rounded));
    });
  });
}
