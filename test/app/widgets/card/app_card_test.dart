import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  testWidgets('should render AppCard with text', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AppCard(child: Text('Conteúdo do Card')),
        ),
      ),
    );
    expect(find.text('Conteúdo do Card'), findsOneWidget);
  });
}
