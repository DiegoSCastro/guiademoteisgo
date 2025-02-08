import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('MyLocationButton Widget Tests', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: MyLocationButton(),
          ),
        ),
      );

      expect(find.text('minha localização'), findsOneWidget);

      expect(find.byIcon(Icons.keyboard_arrow_down_rounded), findsOneWidget);

      expect(find.byType(DashedBorderContainer), findsOneWidget);

      final sizedBoxFinder = find.byWidgetPredicate(
        (widget) => widget is SizedBox && widget.height == 16,
      );
      expect(sizedBoxFinder, findsOneWidget);
    });

    testWidgets(
        'tapping on the button calls AppSnackbar.pending (shows a SnackBar)',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: MyLocationButton(),
          ),
        ),
      );

      expect(find.byType(SnackBar), findsNothing);

      await tester.tap(find.text('minha localização'));
      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);
    });
  });
}
