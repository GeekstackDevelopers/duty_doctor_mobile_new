import 'package:duty_doctor/app.dart';

class WalletEarningTile extends StatelessWidget {
  final String title;
  final String amount;
  final bool isCompleted;
  const WalletEarningTile({
    super.key,
    required this.title,
    required this.amount,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRouteNames.earningAndPaymentScreen);
      },
      child: Container(
        padding: .all(15.w),
        margin: .only(bottom: 15.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.grey),
        ),

        child: Row(
          children: [
            Expanded(
              child: Column(
                spacing: 4.h,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'medium'),
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "Date: 24 Oct 2025",
                        style: TextStyle(fontSize: 11.sp, letterSpacing: -.1),
                      ),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 11.sp, letterSpacing: -.1),
                      ),
                      Text(
                        "Type: Credit",
                        style: TextStyle(fontSize: 11.sp, letterSpacing: -.1),
                      ),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 11.sp, letterSpacing: -.1),
                      ),
                      Text(
                        "Amount: ₹2,500",
                        style: TextStyle(fontSize: 11.sp, letterSpacing: -.1),
                      ),
                    ],
                  ),
                  Text(
                    "Status: ${isCompleted ? "🟢Completed" : "🟠Processing"}",
                    style: TextStyle(fontSize: 11.sp, letterSpacing: -.1),
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
