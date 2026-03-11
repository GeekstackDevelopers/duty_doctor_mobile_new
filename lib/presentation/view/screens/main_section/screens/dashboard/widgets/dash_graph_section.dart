import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class DashGraphSection extends StatelessWidget {
  const DashGraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(15.w),
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: AppColors.lightPrimaryColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10.h,
                children: [
                  Text(
                    'Compliance & Verification overview',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const DottedDivider(),
                  const Text('7 metrics completed\nLast updated: 05 Jan 2025'),
                ],
              ),
            ),
            Container(
              width: 110.w,
              height: 110.w,
              color: Colors.white,
              child: const Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
