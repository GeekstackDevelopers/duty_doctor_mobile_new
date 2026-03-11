import 'package:duty_doctor/app.dart';

class DashBoardAppbar extends StatelessWidget {
  const DashBoardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.0.h),
        child: Row(
          spacing: 15.w,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/temp/profile.png',
                height: 60.w,
                width: 60.w,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning 👋🏻',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'light',
                    ),
                  ),
                  Text(
                    'Dr. Rakesh Sharma',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Container(
              height: 50.w,
              width: 50.w,
              decoration: BoxDecoration(
                color: AppColors.lightPrimaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: UnconstrainedBox(
                child: SvgPicture.asset(
                  'assets/icons/notification_home.svg',
                  width: 25.w,
                  height: 25.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
