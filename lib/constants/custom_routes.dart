import 'package:go_router/go_router.dart';
import 'custom_string.dart';
import '../presentation/screens/auth/log_in_screen.dart';
import '../presentation/screens/auth/on_boarding_screen.dart';
import '../presentation/screens/auth/splash_screen.dart';

class CustomRoutes {
  final GoRouter _route = GoRouter(
    initialLocation: splashScreen,
    routes: [
      // TODO Auth Routes
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
        routes: [
          GoRoute(
            path: onboardingScreen,
            builder: (context, state) => const OnBoardingScreen(),
          ),
          GoRoute(path: logInScreen, builder: (context, state) {
            return const LogInScreen();
          }),
        ],
      ),
      // TODO User Routes

      // TODO Admin Routes
    ],
  );

  GoRouter get route => _route;
}
