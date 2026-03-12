import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

void showShareDutyDialogue() {
  showDialog(
    context: rootNavigatorKey.currentContext!,
    builder: (context) => const ShareDutyDialogue(),
  );
}

class ShareDutyDialogue extends StatelessWidget {
  const ShareDutyDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      constraints: BoxConstraints(maxWidth: 363.w),
      // color: Colors.transparent,
      child: Container(
        // margin: EdgeInsets.all(15.w),
        padding: EdgeInsets.all(6.w),
        decoration: BoxDecoration(
          color: AppColors.backgroudColor,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            gradient: LinearGradient(
              end: AlignmentGeometry.bottomCenter,
              begin: AlignmentGeometry.topCenter,
              stops: [0.1, 0.6],
              colors: [
                AppColors.primaryColor.withAlpha(50),
                Colors.transparent,
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/onboarding/share_top.png'),
              Text(
                "Share now",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontFamily: 'medium',
                  letterSpacing: -0.4,
                ),
              ),
              Text(
                "Share this link to help others discover great job\nopportunities and build their careers",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp, letterSpacing: -.3),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.all(6.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Get the link here",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'light',
                        letterSpacing: -.3,
                        height: 1.7,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.lightPrimaryColor,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: EdgeInsets.all(5.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'https://dutydoctor.in/jobs/senior-oncologist-ap',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                          Container(
                            width: 34.w,
                            height: 34.w,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: UnconstrainedBox(
                              child: SvgPicture.asset(
                                'assets/icons/link.svg',
                                width: 15.11.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: SizedBox(
                        width: 220.w,
                        child: const DottedDivider(thickness: 1),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: Text(
                        "Share on social media",
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 15.w,
                      children: [
                        CustomSocialIcon(
                          logo: 'assets/icons/social/insta.svg',
                          onTap: () {},
                        ),
                        CustomSocialIcon(
                          logo: 'assets/icons/social/facebook.svg',
                          onTap: () {},
                        ),
                        CustomSocialIcon(
                          logo: 'assets/icons/social/ln.svg',
                          onTap: () {},
                        ),
                        CustomSocialIcon(
                          logo: 'assets/icons/social/whatsapp.svg',
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSocialIcon extends StatelessWidget {
  final String logo;
  final void Function()? onTap;
  const CustomSocialIcon({super.key, required this.logo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.w,
      width: 46.w,
      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: UnconstrainedBox(child: SvgPicture.asset(logo, width: 20.w)),
    );
  }
}
