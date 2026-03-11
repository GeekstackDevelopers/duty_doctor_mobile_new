import 'package:duty_doctor/app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.goNamed(AppRouteNames.welcomeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // color: AppColors.backgroudColor,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 255, 255, 255), // top
            Color.fromARGB(255, 227, 228, 234), // middle
            Color(0xFFAAADCC), // bottom
            // Color.fromARGB(255, 127, 130, 179),
          ],
          stops: [
            0.0,
            0.4,
            // .7,
            1,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/images/onboarding/splash_text.png'),
            ),
            Center(
              child: Image.asset(
                'assets/images/onboarding/splash_center_logo.png',
                width: 157.85252380371094.w,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/onboarding/Ellipse 1.png',
                width: 308.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
