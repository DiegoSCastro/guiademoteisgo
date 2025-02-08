import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  testWidgets('GoLaterPage renders correct message and layout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: GoLaterPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      find.text('Em breve você poderá fazer agendamentos'),
      findsOneWidget,
    );

    expect(find.byType(Center), findsOneWidget);

    final paddingFinder = find.byWidgetPredicate(
      (widget) =>
          widget is Padding &&
          widget.padding == const EdgeInsets.symmetric(horizontal: 80),
    );
    expect(paddingFinder, findsOneWidget);
  });
}
