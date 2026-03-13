import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_detail_top_section.dart';

class JobApplyScreen3 extends StatelessWidget {
  const JobApplyScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Job Details"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(children: [const JobDetailTopSection()]),
              ),
              CustomButton(label: "Submit", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
