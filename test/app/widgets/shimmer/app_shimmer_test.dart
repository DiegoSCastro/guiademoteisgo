// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  group('AppShimmer Widget Tests', () {
    testWidgets('builds without errors and contains a Shimmer widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppShimmer(),
          ),
        ),
      );

      expect(find.byType(AppShimmer), findsOneWidget);
      expect(find.byType(Shimmer), findsOneWidget);
    });

    testWidgets('renders Container with correct properties',
        (WidgetTester tester) async {
      const testMargin = EdgeInsets.all(4);
      const testHeight = 30.0;
      const testWidth = 200.0;
      const testBorderRadius = BorderRadius.all(Radius.circular(8));

      const appShimmer = AppShimmer(
        width: testWidth,
      );

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: appShimmer,
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 500));

      final containerFinder = find.descendant(
        of: find.byType(Shimmer),
        matching: find.byType(Container),
      );
      expect(containerFinder, findsOneWidget);

      final Container containerWidget = tester.widget(containerFinder);
      expect(containerWidget.margin, equals(testMargin));

      final decoration = containerWidget.decoration;
      expect(decoration, isA<BoxDecoration>());
      final boxDecoration = decoration! as BoxDecoration;
      expect(boxDecoration.color, equals(AppColors.white));
      expect(boxDecoration.borderRadius, equals(testBorderRadius));
    });
  });
}
