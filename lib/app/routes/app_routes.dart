import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:guiademoteisgo/app/features/home/presentation/view/home/home_page.dart';

sealed class AppRoutes {
  static const splashPath = '/splash';

  final GoRouter router = GoRouter(
    initialLocation: splashPath,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Home Base')),
        ),
        routes: [
          GoRoute(
            path: 'splash',
            builder: (context, state) => const SplashPage(),
          ),
          ShellRoute(
            builder: (context, state, child) => HomePage(
              state: state,
              child: child,
            ),
            routes: [
              GoRoute(
                path: 'go_now',
                builder: (context, state) => const GoNowPage(),
              ),
              GoRoute(
                path: 'go_later',
                builder: (context, state) => const GoLaterPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
