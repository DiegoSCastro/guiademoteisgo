// ignore_for_file: unawaited_futures

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('DrawerOptionButton Tests', () {
    testWidgets('renders icon, label, and arrow icon',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: DrawerOptionButton(
              icon: Icons.home,
              label: 'Home',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.home), findsOneWidget);
      expect(find.text('Home'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_forward_ios_rounded), findsOneWidget);
    });

    testWidgets('calls provided onTap callback when tapped',
        (WidgetTester tester) async {
      var wasTapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DrawerOptionButton(
              icon: Icons.home,
              label: 'Home',
              onTap: () {
                wasTapped = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Home'));
      await tester.pumpAndSettle();

      expect(wasTapped, isTrue);
    });

    testWidgets(
        'fallback behavior: calls context.pop() when onTap is not provided',
        (WidgetTester tester) async {
      final router = GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const Scaffold(
              body: Center(child: Text('Root')),
            ),
          ),
          GoRoute(
            path: '/dummy',
            builder: (context, state) => Scaffold(
              appBar: AppBar(),
              body: const DrawerOptionButton(
                icon: Icons.home,
                label: 'Fallback Button',
              ),
            ),
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Root'), findsOneWidget);

      router.push('/dummy');
      await tester.pumpAndSettle();

      expect(find.text('Fallback Button'), findsOneWidget);

      await tester.tap(find.text('Fallback Button'));
      await tester.pumpAndSettle();

      expect(find.text('Root'), findsOneWidget);
    });
  });
}
