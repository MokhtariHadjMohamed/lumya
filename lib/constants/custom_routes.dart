import 'package:go_router/go_router.dart';
import 'package:lumya/constants/custom_string.dart';
import 'package:lumya/presentation/screens/auth/on_boarding_screen.dart';
import 'package:lumya/presentation/screens/auth/splash_screen.dart';

class CustomRoutes {
  final GoRouter _route = GoRouter(
    // initialLocation: "$splashScreen/$onboardingScreen",
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
        ],
      ),
      // TODO User Routes

      // TODO Admin Routes
    ],
  );

  GoRouter get route => _route;
}
