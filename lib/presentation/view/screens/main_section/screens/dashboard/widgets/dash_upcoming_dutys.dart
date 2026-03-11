import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class DashUpcomingDutys extends StatelessWidget {
  const DashUpcomingDutys({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(15.w),
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          color: Colors.white,
        ),
        child: Column(
          spacing: 10.h,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Duty\'s',
                  style: TextStyle(fontSize: 20.sp, fontFamily: 'medium'),
                ),
                Text("See all", style: TextStyle(fontSize: 13.sp)),
              ],
            ),

            const UpcomingDutysTile(
              imagePath: 'assets/images/temp/hospial_logo/image 12-2.png',
              title: "Night Duty - General medicine",
            ),

            const UpcomingDutysTile(
              imagePath: 'assets/images/temp/hospial_logo/image 12-3.png',
              title: "Night Duty - General medicine",
            ),
            const UpcomingDutysTile(
              imagePath: 'assets/images/temp/hospial_logo/image 12.png',
              title: "Night Duty - General medicine",
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}

class UpcomingDutysTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isLast;
  const UpcomingDutysTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.w,
          children: [
            Container(
              width: 51.w,
              height: 51.w,
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                border: Border.all(width: 0.3),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            Expanded(
              child: Column(
                spacing: 5.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontFamily: 'medium', fontSize: 15.sp),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('ST: 10:00pm - 6:00 am')],
                  ),
                ],
              ),
            ),
          ],
        ),
        if (!isLast) const DottedDivider(),
      ],
    );
  }
}
