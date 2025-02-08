import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('MapFAB Widget Tests', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MapFAB(
              onTap: () {},
            ),
          ),
        ),
      );

      expect(find.text('mapa'), findsOneWidget);
      expect(find.byIcon(Icons.map_outlined), findsOneWidget);
    });

    testWidgets('calls onTap callback when pressed',
        (WidgetTester tester) async {
      var wasTapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MapFAB(
              onTap: () {
                wasTapped = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('mapa'));
      await tester.pumpAndSettle();

      expect(wasTapped, isTrue);
    });
  });
}
