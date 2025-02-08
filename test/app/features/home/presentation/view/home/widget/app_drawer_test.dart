import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class FakeRoute extends Fake implements Route<dynamic> {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeRoute());
  });

  group('AppDrawer Widget Tests', () {
    testWidgets('DrawerOptionButton com onTap personalizado chama onTap',
        (WidgetTester tester) async {
      var tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DrawerOptionButton(
              icon: Icons.person_outline_rounded,
              label: 'Test Option',
              onTap: () {
                tapped = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Test Option'));
      await tester.pump();

      expect(tapped, isTrue);
    });

    testWidgets(
        'DrawerOptionButton, sem onTap fornecido, executa fallback chamando context.pop() sem erro',
        (WidgetTester tester) async {
      final router = GoRouter(
        initialLocation: '/dummy',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const Scaffold(
              body: Center(child: Text('Root Screen')),
            ),
          ),
          GoRoute(
            path: '/dummy',
            builder: (context, state) => Scaffold(
              appBar: AppBar(),
              body: Builder(
                builder: (context) => const DrawerOptionButton(
                  icon: Icons.person_outline_rounded,
                  label: 'Sem onTap',
                ),
              ),
            ),
          ),
        ],
        errorBuilder: (context, state) => const Scaffold(
          body: Center(child: Text('Error')),
        ),
      );

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );

      expect(find.text('Sem onTap'), findsOneWidget);
    });
  });
}
