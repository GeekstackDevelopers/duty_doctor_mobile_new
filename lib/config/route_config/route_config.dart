import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/doc_and_cert_screen/doc_and_cert_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/helpcenter_section/help_center_page.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/language_screen/language_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/notification_setting_screen/notification_settings_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/privacy_policy/privacy_policy.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/security_settings_section/security_settings_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/screens/earnings_and_payments/earnings_and_payment_screen.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/screens/wallet_screen/wallet_screen.dart';

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
            path: '/wallet',
            name: AppRouteNames.walletScren,
            builder: (context, state) => const WalletScreen(),
          ),
          GoRoute(
            path: '/earningAndPayments',
            name: AppRouteNames.earningAndPaymentScreen,
            builder: (context, state) => const EarningsAndPaymentScreen(),
          ),
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
            routes: [
              GoRoute(
                path: "/jobApply1",
                name: AppRouteNames.jobApplyScreen1,
                builder: (context, state) => const JobApplyScreen1(),
                routes: [
                  GoRoute(
                    path: "/jobApply2",
                    name: AppRouteNames.jobApplyScreen2,
                    builder: (context, state) => const JobApplyScreen2(),
                    routes: [
                      GoRoute(
                        path: "/jobApply3",
                        name: AppRouteNames.jobApplyScreen3,
                        builder: (context, state) => const JobApplyScreen3(),
                        routes: [],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: "/docAndCert",
            name: AppRouteNames.documentAndCertificateSection,
            builder: (context, state) => const DocAndCertScreen(),
          ),
          GoRoute(
            path: "/securitySettings",
            name: AppRouteNames.securitySettingsScreen,
            builder: (context, state) => const SecuritySettingsScreen(),
          ),
          GoRoute(
            path: '/notificationSettings',
            name: AppRouteNames.notificationSettings,
            builder: (context, state) => const NotificationSettingsScreen(),
          ),
          GoRoute(
            path: '/privacyPolicy',
            name: AppRouteNames.privacyPolicy,
            builder: (context, state) => const PrivacyPolicyScreen(),
          ),
          GoRoute(
            path: '/helpcenter',
            name: AppRouteNames.helpCenterScreen,
            builder: (context, state) => const HelpCenterScreen(),
          ),
          GoRoute(
            path: "/language",
            name: AppRouteNames.languageScreen,
            builder: (context, state) => const LanguageScreen(),
          ),
        ],
      ),
    ],
  );
}
