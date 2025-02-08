import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  testWidgets('should render correctly', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DashedBorderContainer(
            child: Text('Conteúdo'),
          ),
        ),
      ),
    );
    expect(find.text('Conteúdo'), findsOneWidget);
  });
}
