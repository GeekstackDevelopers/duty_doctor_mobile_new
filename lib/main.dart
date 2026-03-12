import 'package:flutter/services.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // OneSignal.initialize(OneSignalCredentials().getOneSignalAppId);
  // OneSignal.Notifications.requestPermission(true);
  runApp(
    MultiProvider(
      providers: DutyDoctorsProviders.providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          scaffoldMessengerKey: scaffoldMessengerKey,
          debugShowCheckedModeBanner: false,
          // locale: Locale(
          //   Provider.of<LocalizationController>(
          //     context,
          //   ).selectedLocalizationOption.name,
          // ),
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: AppLocalizations.supportedLocales,
          title: 'Duty Doctors',
          theme: ThemeData(
            fontFamily: 'Lufga',
            dialogTheme: const DialogThemeData(
              backgroundColor: Colors.transparent,
            ),
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white,
              primary: AppColors.primaryColor,
            ),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.backgroudColor,
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.backgroudColor,
            ),
          ),
          routerConfig: MedOneRouteConfig.goRouter,
        );
      },
    );
  }
}
