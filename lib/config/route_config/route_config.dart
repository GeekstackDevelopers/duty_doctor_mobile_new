import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/job_detail_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/upcoming_dutys/screens/duty_history_screen/duty_history_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/upcoming_dutys/screens/duty_history_screen/screens/rate_hospital_screen/rate_hospital_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/upcoming_dutys/screens/upcoming_duty_details_screen/upcoming_duty_details_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/messages/screens/chat_page.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MedOneRouteConfig {
  static GoRouter goRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
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
        routes: [
          GoRoute(
            path: '/chat',
            name: AppRouteNames.messageScreen,
            builder: (context, state) => const ChatPage(),
          ),
          GoRoute(
            path: '/upcomingDutyDetails',
            name: AppRouteNames.upComingDutyDetailsScreen,
            builder: (context, state) => const UpcomingDutyDetailsScreen(),
          ),
          GoRoute(
            path: "/dutyHistoryScreen",
            name: AppRouteNames.dutyHistory,
            builder: (context, state) => const DutyHistoryScreen(),
            routes: [
              GoRoute(
                path: "/feedback",
                name: AppRouteNames.feebackScreen,
                builder: (context, state) => const RateHospitalScreen(),
              ),
            ],
          ),
          GoRoute(
            path: '/jobDetails',
            name: AppRouteNames.jobDetailsScreen,
            builder: (context, state) => const JobDetailScreen(),
          ),
        ],
      ),
    ],
  );
}
