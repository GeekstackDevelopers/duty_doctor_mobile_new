import 'package:duty_doctor/app.dart';

class DashStatusGridSection extends StatelessWidget {
  const DashStatusGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.w),
        child: Wrap(
          spacing: 15.w,
          runSpacing: 15.h,
          children: [
            const DashStatusGrid(
              title: "Today's\nDuty",
              value: "05+",
              imagePath: "assets/icons/todyduty.svg",
            ),
            const DashStatusGrid(
              title: "Active\nJobs",
              value: "07+",
              imagePath: "assets/icons/bottomnavicons/unselected/dutys_uns.svg",
            ),
            const DashStatusGrid(
              title: "Total\nEarnings",
              value: "₹58,400",
              imagePath: "assets/icons/earnings.svg",
            ),
            const DashStatusGrid(
              title: "Earn\nBadges",
              value: "2,345",
              imagePath: "assets/icons/badges.svg",
            ),
          ],
          // List.generate(
          //   4,
          //   (index) => const DashStatusGrid(
          //     title: "Today's\nDuty",
          //     value: "05+",
          //     imagePath: "assets/icons/todyduty.svg",
          //   ),
          // ),
        ),
      ),
    );
  }
}

class DashStatusGrid extends StatelessWidget {
  final String title;
  final String value;
  final String imagePath;
  const DashStatusGrid({
    super.key,
    required this.title,
    required this.value,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      width: (MediaQuery.sizeOf(context).width - 45.w) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Colors.black12),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 17.sp, fontFamily: 'medium'),
                ),
                SizedBox(height: 5.h),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 27.sp,
                    fontFamily: 'medium',
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.lightPrimaryColor,
            ),
            child: Center(
              child: UnconstrainedBox(
                child: SvgPicture.asset(imagePath, width: 21.w),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
