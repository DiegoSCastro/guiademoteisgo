import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('GoNowPageLoader Widget Tests', () {
    testWidgets('builds without errors and renders expected widgets',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: GoNowPageLoader(),
            ),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 500));
      expect(tester.takeException(), isNull);
      expect(find.byType(AppShimmer), findsNWidgets(7));
      expect(find.byType(AppCard), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) => widget is SizedBox && widget.height == 2,
        ),
        findsOneWidget,
      );
    });
  });
}
