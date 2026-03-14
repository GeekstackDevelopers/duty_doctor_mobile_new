import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/widgets/profile_general_section.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/widgets/profile_job_status_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 15.w),
          child: ListView(
            children: [
              SizedBox(height: 15.h),
              Container(
                width: 118.w,
                height: 118.h,
                decoration: BoxDecoration(
                  color: AppColors.lightPrimaryColor,
                  shape: .circle,
                  border: Border.all(width: 2, color: AppColors.primaryColor),
                ),
                child: Image.asset(
                  "assets/images/temp/profile.png",
                  // width: 67.w,
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  "Dr. Rakesh Sharma",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
              Center(
                child: Text(
                  "rakeshsharma@gmail.com",
                  style: TextStyle(fontSize: 17.sp, fontFamily: 'light'),
                ),
              ),
              const ProfileJobStatusSection(),
              const ProfileGeneralSection(),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
