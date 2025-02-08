import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  testWidgets('should toggle the button state', (tester) async {
    var selecionado = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SelectButton(
            label: 'Selecionar',
            isSelected: selecionado,
            onChanged: (valor) => selecionado = valor,
          ),
        ),
      ),
    );
    final botao = find.text('Selecionar');
    expect(botao, findsOneWidget);
    await tester.tap(botao);
    await tester.pump();
    expect(selecionado, isTrue);
  });
}
