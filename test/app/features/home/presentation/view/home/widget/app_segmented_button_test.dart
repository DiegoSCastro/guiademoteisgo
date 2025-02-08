// ignore_for_file: omit_local_variable_types

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('AppSegmentedButton Widget Tests', () {
    testWidgets('renders two options with correct labels',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                child: AppSegmentedButton(
                  onTapNow: () {},
                  onTapLater: () {},
                ),
              ),
            ),
          ),
        ),
      );

      expect(find.text('ir agora'), findsOneWidget);
      expect(find.text('ir outro dia'), findsOneWidget);
    });

    testWidgets(
        'tapping "ir agora" calls onTapNow and keeps first option selected',
        (WidgetTester tester) async {
      var tapNowCalled = false;
      var tapLaterCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                child: AppSegmentedButton(
                  onTapNow: () {
                    tapNowCalled = true;
                  },
                  onTapLater: () {
                    tapLaterCalled = true;
                  },
                ),
              ),
            ),
          ),
        ),
      );

      final animatedPosFinder = find.byType(AnimatedPositioned);
      AnimatedPositioned posWidget = tester.widget(animatedPosFinder);
      expect(posWidget.left, 0);

      // Simula o toque na opção "ir agora".
      await tester.tap(find.text('ir agora'));
      await tester.pumpAndSettle();

      expect(tapNowCalled, isTrue);
      expect(tapLaterCalled, isFalse);

      posWidget = tester.widget(animatedPosFinder);
      expect(posWidget.left, 0);
    });

    testWidgets('tapping "ir outro dia" calls onTapLater and changes selection',
        (WidgetTester tester) async {
      var tapNowCalled = false;
      var tapLaterCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                child: AppSegmentedButton(
                  onTapNow: () {
                    tapNowCalled = true;
                  },
                  onTapLater: () {
                    tapLaterCalled = true;
                  },
                ),
              ),
            ),
          ),
        ),
      );

      final animatedPosFinder = find.byType(AnimatedPositioned);
      AnimatedPositioned posWidget = tester.widget(animatedPosFinder);
      expect(posWidget.left, 0);
      await tester.tap(find.text('ir outro dia'));
      await tester.pumpAndSettle();

      expect(tapLaterCalled, isTrue);
      expect(tapNowCalled, isFalse);

      posWidget = tester.widget(animatedPosFinder);
      expect(posWidget.left, 92);
    });
  });
}
