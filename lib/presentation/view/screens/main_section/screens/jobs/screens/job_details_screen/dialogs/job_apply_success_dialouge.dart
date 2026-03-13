import 'dart:async';

import 'package:duty_doctor/app.dart';
import 'package:gif/gif.dart';

void showJobAppliedSuccessDialogue() {
  showDialog(
    context: rootNavigatorKey.currentContext!,
    builder: (context) => const JobApplySuccessDialouge(),
  );
}

class JobApplySuccessDialouge extends StatefulWidget {
  const JobApplySuccessDialouge({super.key});

  @override
  State<JobApplySuccessDialouge> createState() =>
      _JobApplySuccessDialougeState();
}

class _JobApplySuccessDialougeState extends State<JobApplySuccessDialouge> {
  ValueNotifier<bool> visbilityNotifier = ValueNotifier(true);
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      visbilityNotifier.value = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: .symmetric(horizontal: 15.w),

      child: Padding(
        padding: .only(bottom: 20.h),
        child: Stack(
          alignment: .topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20.r),
              child: ColoredBox(
                color: AppColors.white,
                child: Container(
                  padding: EdgeInsets.all(10.w),
                  width: 363,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    border: Border.all(color: Colors.white, width: 5.w),

                    gradient: LinearGradient(
                      begin: .topCenter,
                      end: .bottomCenter,
                      stops: [0, 0.6],
                      colors: [
                        AppColors.primaryColor.withAlpha(50),
                        Colors.white,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/popper.png", width: 101.w),
                      SizedBox(height: 20.h),
                      Text(
                        "Congratulations",
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: "medium",
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        "Your application has been placed you will\nreceive an email receipt shortly",
                        style: TextStyle(fontSize: 13.sp),
                        textAlign: .center,
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        spacing: 10.w,
                        children: [
                          Expanded(
                            child: CustomButton(
                              label: "View Application",
                              textColor: Colors.black,
                              buttonColor: AppColors.white,
                              onTap: () {
                                context.goNamed(AppRouteNames.mainScreen);
                              },
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                              label: "Back to Home",
                              onTap: () {
                                context.goNamed(AppRouteNames.mainScreen);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: -30.h,
              child: Gif(
                width: 200.w,
                image: const AssetImage("assets/gif/popper.gif"),
                autostart: .once,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
