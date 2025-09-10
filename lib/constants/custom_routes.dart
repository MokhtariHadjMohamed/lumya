import 'package:go_router/go_router.dart';
import 'package:lumya/constants/custom_string.dart';
import 'package:lumya/presentation/screens/auth/splash_screen.dart';

class CustomRoutes {
  final GoRouter _route = GoRouter(
    initialLocation: "/splashScreen",
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: onboardingScreen,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );

  GoRouter get route => _route;
}
