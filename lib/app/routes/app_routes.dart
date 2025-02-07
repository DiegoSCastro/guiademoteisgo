import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

sealed class AppRoutes {
  static const splashPath = '/splash';
  static const goNowPath = '/go_now';
  static const goLaterPath = '/go_later';
  static const multiImageViewPath = '/multi_image_view';

  static GoRouter router = GoRouter(
    initialLocation: splashPath,
    routes: [
      GoRoute(
        path: splashPath,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: multiImageViewPath,
        builder: (context, state) => MultiImageViewPage(
          suite: state.extra! as Suite,
        ),
      ),
      ShellRoute(
        builder: (context, state, child) => HomePage(
          state: state,
          child: child,
        ),
        routes: [
          GoRoute(
            path: goNowPath,
            builder: (context, state) => const GoNowPage(),
          ),
          GoRoute(
            path: goLaterPath,
            builder: (context, state) => const GoLaterPage(),
          ),
        ],
      ),
    ],
  );
}
