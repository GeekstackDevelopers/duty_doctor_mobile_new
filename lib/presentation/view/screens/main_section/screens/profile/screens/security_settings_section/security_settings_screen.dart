import 'package:duty_doctor/app.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Security Settings"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRouteNames.changeMailScreen);
              },
              behavior: HitTestBehavior.translucent,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "vinithadmin@gmail.com",
                        style: CustomTextStyles.lufgaText.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        "Change email",
                        style: CustomTextStyles.lufgaText.copyWith(
                          fontSize: 12.sp,
                          fontFamily: 'light',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 30, thickness: 0.2),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deactivate my account",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Text(
                          "your account will be reactive when you sign in again",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'light',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Deactivate',
                    style: TextStyle(
                      color: AppColors.fontGrey,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 30, thickness: 0.2),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delete account",
                          style: CustomTextStyles.lufgaText.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          "This will shut down your account.",
                          style: CustomTextStyles.lufgaText.copyWith(
                            fontSize: 12.sp,
                            fontFamily: 'light',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Delete',
                    style: CustomTextStyles.lufgaText.copyWith(
                      color: AppColors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
