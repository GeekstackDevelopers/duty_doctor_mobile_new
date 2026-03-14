import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/screens/wallet_screen/widgets/wallet_earning_payment_section.dart';

import 'widgets/wallet_profile_tile.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: "Wallet",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.file_download_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 15.w),
          child: ListView(
            children: [
              SizedBox(height: 15.h),
              const WalletProfileTile(),
              const WalletEarningPaymentSection(),
            ],
          ),
        ),
      ),
    );
  }
}
