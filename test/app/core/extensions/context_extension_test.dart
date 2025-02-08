import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('ContextExtension', () {
    late MaterialApp app;
    late BuildContext context;

    setUp(() {
      app = MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 16),
          ),
          colorScheme: const ColorScheme.light(
            primary: Colors.blue,
          ),
        ),
        home: Builder(
          builder: (ctx) {
            context = ctx;
            return const Scaffold(
              body: SizedBox(),
            );
          },
        ),
      );
    });

    testWidgets('Deve retornar o tema correto', (WidgetTester tester) async {
      await tester.pumpWidget(app);

      expect(context.theme, isA<ThemeData>());
      expect(context.theme.textTheme.bodyLarge?.fontSize, 16);
    });

    testWidgets('Deve retornar o textTheme correto',
        (WidgetTester tester) async {
      await tester.pumpWidget(app);

      expect(context.textTheme, isA<TextTheme>());
      expect(context.textTheme.bodyLarge?.fontSize, 16);
    });

    testWidgets('Deve retornar o colorScheme correto',
        (WidgetTester tester) async {
      await tester.pumpWidget(app);

      expect(context.colorScheme, isA<ColorScheme>());
      expect(context.colorScheme.primary, Colors.blue);
    });

    testWidgets('Deve retornar a largura correta', (WidgetTester tester) async {
      await tester.pumpWidget(app);

      tester.view.physicalSize = const Size(800, 400);
      tester.view.devicePixelRatio = 1.0;

      expect(context.width, 800);
    });

    testWidgets('Deve retornar a altura correta', (WidgetTester tester) async {
      await tester.pumpWidget(app);

      // Define um tamanho de tela para o teste
      tester.view.physicalSize = const Size(800, 400);
      tester.view.devicePixelRatio = 1.0;

      expect(context.height, 400);
    });

    testWidgets('Deve retornar true para isLightMode no tema claro',
        (WidgetTester tester) async {
      await tester.pumpWidget(app);

      expect(context.isLightMode, true);
    });

    testWidgets('Deve retornar false para isLightMode no tema escuro',
        (WidgetTester tester) async {
      final darkApp = MaterialApp(
        theme: ThemeData.dark(),
        home: Builder(
          builder: (ctx) {
            context = ctx;
            return const Scaffold(
              body: SizedBox(),
            );
          },
        ),
      );

      await tester.pumpWidget(darkApp);

      expect(context.isLightMode, false);
    });
  });
}
