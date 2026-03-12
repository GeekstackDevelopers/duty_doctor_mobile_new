import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/widgets/jobs_search_bar.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/custom_dutys_tile.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Posted jobs"),
      body: Padding(
        padding: EdgeInsets.all(15.0.w),
        child: Column(
          spacing: 15.h,
          children: [
            const JobsSearchBar(),
            Expanded(
              child: ListView.separated(
                itemCount: 14,
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
                itemBuilder: (context, index) => const CustomDutysTile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
