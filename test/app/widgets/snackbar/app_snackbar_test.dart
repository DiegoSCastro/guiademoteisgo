import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  testWidgets('should display a success SnackBar', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () =>
                    AppSnackbar.warning(context, message: 'Teste de sucesso'),
                child: const Text('Mostrar SnackBar'),
              );
            },
          ),
        ),
      ),
    );
    await tester.tap(find.text('Mostrar SnackBar'));
    await tester.pump();
    expect(find.text('Teste de sucesso'), findsOneWidget);
  });
}
