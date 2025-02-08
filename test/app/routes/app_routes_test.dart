import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class FakeSuite extends Fake implements Suite {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeSuite());
  });

  testWidgets(
    'Deve exibir a GoLaterPage quando a rota é /go_later',
    (WidgetTester tester) async {
      final router = AppRoutes.createRouter(AppRoutes.goLaterPath);

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );

      expect(find.byType(GoLaterPage), findsOneWidget);
    },
  );
}
