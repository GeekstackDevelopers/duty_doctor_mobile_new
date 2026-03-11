import 'package:duty_doctor/app.dart';
import 'package:lottie/lottie.dart';

class DashOngoingDutySection extends StatelessWidget {
  const DashOngoingDutySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(15.w),
            margin: EdgeInsets.only(bottom: 20.h, top: 10.h),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ongoing Duty", style: TextStyle(fontSize: 21.sp)),
                    Text(
                      '🟢 Active',
                      style: TextStyle(fontSize: 11.sp, color: Colors.green),
                    ),
                  ],
                ),
                Text(
                  'Are you sure you want to cancel your appointment with [Service Provider Name] scheduled for [Date] at [Time]? Cancellation policy:',
                  style: TextStyle(fontSize: 10.sp, fontFamily: 'light'),
                ),

                const DashOngoingProgress(progress: 0.7),
                SizedBox(height: 5.h),
                Row(
                  spacing: 10.w,
                  children: [
                    const Text(
                      'Remaining Time\n3:33:32',
                      style: TextStyle(fontSize: 11, color: AppColors.red),
                    ),
                    // const Spacer(),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: CustomButton(
                        label: "Cancel",
                        borderRadius: 12,
                        buttonColor: Colors.white,
                        textColor: AppColors.fontGrey,
                        vPadding: 10.h,
                      ),
                    ),

                    Expanded(
                      child: CustomButton(
                        label: "Accept",
                        borderRadius: 12,
                        vPadding: 10.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          LottieBuilder.asset('assets/lottie/bell.json', width: 25.w),
        ],
      ),
    );
  }
}

class DashOngoingProgress extends StatelessWidget {
  final double progress;
  const DashOngoingProgress({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 9.h,
            decoration: BoxDecoration(
              color: AppColors.backgroudColor,
              border: Border.all(color: Colors.black12, width: 0.5),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 333.w * progress,
            height: 9.h,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.primaryColor, Colors.white],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}

// 393 - 30 - 30
