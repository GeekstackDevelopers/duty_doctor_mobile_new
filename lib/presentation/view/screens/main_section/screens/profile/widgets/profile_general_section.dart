import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/widgets/profile_general_tile.dart';

class ProfileGeneralSection extends StatelessWidget {
  const ProfileGeneralSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.borderColor),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text("General", style: TextStyle(fontSize: 14.sp)),
          SizedBox(height: 15.h),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/personal_info.svg",
            text: "Personal Information",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/education.svg",
            text: "Edit Educational Details",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/resume.svg",
            text: "Resume Builder",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/scholarship.svg",
            text: "My Scholarships",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/ads_manage.svg",
            text: "Ads Manager",
          ),
          ProfileGeneralTile(
            icon: "assets/icons/profile/doc.svg",
            text: "Documents & Certificates",
            onTap: () {
              context.pushNamed(AppRouteNames.documentAndCertificateSection);
            },
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/language.svg",
            text: "Language",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/security_settings.svg",
            text: "Security Settings",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/notificaion.svg",
            text: "Notification",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/help.svg",
            text: "Help Center",
          ),
          const ProfileGeneralTile(
            icon: "assets/icons/profile/privacy.svg",
            text: "Privacy Poilcy",
            islast: true,
          ),
        ],
      ),
    );
  }
}
