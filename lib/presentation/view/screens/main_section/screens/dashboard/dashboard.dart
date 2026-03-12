import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/widgets/dash_appbar.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/widgets/dash_graph_section.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/widgets/dash_ongoing_duty_section.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/widgets/dash_recommended_dutys.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/widgets/dash_status_grid_section.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dashboard/widgets/dash_upcoming_dutys.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: const CustomScrollView(
              slivers: [
                DashBoardAppbar(),
                DashGraphSection(),
                DashStatusGridSection(),
                DashOngoingDutySection(),
                DashUpcomingDutys(),
                DashRecommendedDutys(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
