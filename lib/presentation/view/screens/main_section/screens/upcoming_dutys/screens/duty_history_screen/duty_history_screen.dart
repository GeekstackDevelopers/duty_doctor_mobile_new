import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/upcoming_dutys/screens/duty_history_screen/widgets/duty_history_tile.dart';

class DutyHistoryScreen extends StatelessWidget {
  const DutyHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Duty History"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView.separated(
            itemCount: 9,
            separatorBuilder: (context, index) => SizedBox(height: 15.h),
            itemBuilder: (context, index) => const DutyHistoryTile(),
          ),
        ),
      ),
    );
  }
}
