import 'package:duty_doctor/app.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 73.h, width: double.infinity),
              Image.asset(
                'assets/images/onboarding/dutydoctor.png',
                height: 41.h,
              ),
              SizedBox(height: 20.h, width: double.infinity),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    'assets/images/onboarding/Group 1261159919.png',
                    height: 164.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 125.h),
                    child: Image.asset(
                      'assets/images/onboarding/Group 1261159918.png',
                      height: 75.h,
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 2),
              Text(
                'Find Your Dream Medical Jobs',
                style: TextStyle(
                  fontSize: 37.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                  letterSpacing: -.1,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Connecting doctors, nurses, technicians, and healthcare specialists with trusted hospitals and clinics\nacross the country.',
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                  letterSpacing: -0.1,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),
              CustomButton(
                label: 'Get Started',
                onTap: () {},
                buttonColor: AppColors.backgroudColor,
                textColor: AppColors.primaryColor,
                fontSize: 18.sp,
                borderRadius: 15.r,
                vPadding: 15.h,
              ),
              SizedBox(height: 15.h, width: double.infinity),
              CustomButton(
                label: 'Add an existing account',
                onTap: () {
                  context.goNamed(AppRouteNames.mainScreen);
                },
                fontSize: 18.sp,
                borderRadius: 15.r,
                vPadding: 15.h,
              ),
              // SizedBox(height: 75.h, width: double.infinity),
            ],
          ),
        ),
      ),
    );
  }
}
