import 'package:duty_doctor/app.dart';

class MedOneRouteConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppRouteNames.splashScreen,
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/welcomeScreen',
        name: AppRouteNames.welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/mainScreen',
        name: AppRouteNames.mainScreen,
        builder: (context, state) {
          return const MainScreen();
        },
      ),
    ],
  );
}
