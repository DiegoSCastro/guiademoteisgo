import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

sealed class AppRoutes {
  static const splashPath = '/splash';
  static const goNowPath = '/go_now';
  static const goLaterPath = '/go_later';

  static GoRouter router = GoRouter(
    initialLocation: splashPath,
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => HomePage(
          state: state,
          child: child,
        ),
        routes: [
          GoRoute(
            path: '/go_now',
            builder: (context, state) => const GoNowPage(),
          ),
          GoRoute(
            path: '/go_later',
            builder: (context, state) => const GoLaterPage(),
          ),
        ],
      ),
    ],
  );
}
