import 'dart:ui';

import 'package:duty_doctor/app.dart';

class DutysScreen extends StatelessWidget {
  const DutysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Upcoming duty"),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
                itemBuilder: (context, index) => UpcomingDutyTile(
                  onTap: () {
                    context.goNamed(AppRouteNames.upComingDutyDetailsScreen);
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRouteNames.dutyHistory);
              },
              child: Container(
                margin: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 15.w,
                      ),
                      color: Colors.white.withAlpha(51),
                      child: Text(
                        "Duty History",
                        style: TextStyle(fontSize: 16.sp, fontFamily: 'bold'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
