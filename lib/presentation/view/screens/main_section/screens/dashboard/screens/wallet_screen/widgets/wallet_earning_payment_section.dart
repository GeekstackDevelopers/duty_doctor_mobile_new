import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/screens/wallet_screen/widgets/wallet_earning_tile.dart';

class WalletEarningPaymentSection extends StatelessWidget {
  const WalletEarningPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.sp),
        Text(
          "Earnings & Payment History",
          style: TextStyle(
            fontSize: 20.sp,
            fontFamily: 'medium',
            letterSpacing: -.3,
          ),
        ),
        SizedBox(height: 15.sp),
        const WalletEarningTile(
          title: "Apollo Hospital - Night Duty",
          amount: "2500",
          isCompleted: true,
        ),
        const WalletEarningTile(
          title: "Fortis Hospital - Heart Surgery",
          amount: "2500",
          isCompleted: false,
        ),
        const WalletEarningTile(
          title: "Apollo Hospital - Night Duty",
          amount: "2500",
          isCompleted: true,
        ),
        const WalletEarningTile(
          title: "Fortis Hospital - Heart Surgery",
          amount: "2500",
          isCompleted: false,
        ),
        const WalletEarningTile(
          title: "Apollo Hospital - Night Duty",
          amount: "2500",
          isCompleted: true,
        ),
        const WalletEarningTile(
          title: "Fortis Hospital - Heart Surgery",
          amount: "2500",
          isCompleted: false,
        ),
      ],
    );
  }
}
