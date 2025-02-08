import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('SplashPage Widget Test', () {
    late GoRouter router;

    setUp(() {
      router = GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const SplashPage(),
          ),
          GoRoute(
            path: AppRoutes.goNowPath,
            builder: (context, state) => const Scaffold(
              body: Center(child: Text('Home Page')),
            ),
          ),
        ],
      );
    });

    testWidgets('deve exibir o logo e o texto da splash e limpar timers',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );

      expect(find.byType(SplashPage), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
      expect(find.text('guia de motéis go'), findsOneWidget);

      await tester.pump(const Duration(seconds: 3));
      await tester.pumpAndSettle();
    });

    testWidgets('deve navegar para a rota goNowPath após 3 segundos',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );

      expect(find.byType(SplashPage), findsOneWidget);

      await tester.pump(const Duration(seconds: 3));
      await tester.pumpAndSettle();

      expect(find.byType(SplashPage), findsNothing);
      expect(find.text('Home Page'), findsOneWidget);
    });
  });
}
