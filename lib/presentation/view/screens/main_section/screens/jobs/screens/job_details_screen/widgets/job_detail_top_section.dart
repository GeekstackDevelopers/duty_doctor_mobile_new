import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/applied_peoples.dart';

class JobDetailTopSection extends StatelessWidget {
  const JobDetailTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h),
        Row(
          spacing: 8.w,
          children: [
            Container(
              padding: EdgeInsets.all(5.w),
              width: 50.w,
              height: 50.w,
              decoration: BoxDecoration(
                border: Border.all(width: 0.2),
                borderRadius: BorderRadius.circular(7.r),
              ),
              child: Image.asset(
                "assets/images/temp/hospial_logo/image 12-2.png",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Duty Doctor & Medical Assistant",
                    style: TextStyle(
                      fontSize: 21.sp,
                      overflow: TextOverflow.ellipsis,
                      fontFamily: 'semibold',
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    "KMCH Hospital",
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'light'),
                  ),
                ],
              ),
            ),
            const AppliedPeoples(),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Expanded(child: Wrap(children: [])),
            RichText(
              text: TextSpan(
                text: "10 laks",
                style: TextStyle(
                  fontFamily: 'semibold',
                  fontSize: 25.sp,
                  color: AppColors.black,
                ),
                children: [
                  TextSpan(
                    text: '/m',
                    style: TextStyle(fontSize: 10.sp, fontFamily: 'lufga'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
