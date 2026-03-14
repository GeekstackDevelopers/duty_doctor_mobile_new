import 'package:duty_doctor/app.dart';

class WalletProfileTile extends StatelessWidget {
  const WalletProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        image: const DecorationImage(
          image: AssetImage("assets/images/wallet_bg.png"),
          fit: BoxFit.cover,
          opacity: .05,
        ),
        gradient: LinearGradient(
          begin: .bottomLeft,
          end: .topRight,
          colors: [
            const Color(0xFF535CB2).withValues(alpha: 0.7),
            const Color(0xFFF1F2FF),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: .start,
        // spacing: 15.h,
        children: [
          Row(
            crossAxisAlignment: .start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 10.h,
                  children: [
                    Row(
                      spacing: 10.w,
                      children: [
                        CircleAvatar(
                          radius: 20.w,
                          backgroundColor: Colors.white24,
                          child: Text(
                            "R",
                            style: TextStyle(
                              fontSize: 25.sp,
                              color: Colors.white,
                              fontFamily: 'medium',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Dr. Rakesh Sharma",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: 'semibold',
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                "Doctor",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: AppColors.white,
                                  fontFamily: 'light',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Wallet ID : DOC-2145",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.white,
                        fontFamily: "medium",
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset("assets/images/wallet.png", width: 87.w),
            ],
          ),
          Row(
            spacing: 5.w,
            children: [
              Expanded(
                child: CustomButton(
                  fontSize: 12.sp,
                  fontFamily: "semibold",
                  label: "Current Balance : ₹12,400",
                  hPadding: 0,
                  vPadding: 10.h,
                ),
              ),
              Expanded(
                child: CustomButton(
                  fontSize: 12.sp,
                  vPadding: 10.h,
                  buttonColor: Colors.transparent,
                  textColor: AppColors.primaryColor,
                  fontFamily: "semibold",
                  label: "Total Earnings : ₹12,400",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
