import 'package:go_router/go_router.dart';
import 'package:lumya/presentation/screens/auth/register_screen.dart';
import 'custom_string.dart';
import '../presentation/screens/auth/log_in_screen.dart';
import '../presentation/screens/auth/on_boarding_screen.dart';
import '../presentation/screens/auth/splash_screen.dart';

class CustomRoutes {
  final GoRouter _route = GoRouter(
    initialLocation: splashScreen,
    routes: [
      // TODO Start Screens
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: onboardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      // TODO Auth Routes
      GoRoute(
        path: logInScreen,
        builder: (context, state) {
          return const LogInScreen();
        },
        routes: [
          GoRoute(
            path: registerScreen,
            builder: (context, state) {
              return const RegisterScreen();
            },
          ),
        ],
      ),

      // TODO User Routes

      // TODO Admin Routes
    ],
  );

  GoRouter get route => _route;
}
