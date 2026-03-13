import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_detail_title_sub_widget.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_detail_top_section.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Job Details"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const JobDetailTopSection(),
                    Text(
                      "Job description",
                      style: TextStyle(fontSize: 15.sp, fontFamily: "medium"),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "A \"duty doctor,\" also often called a Resident Medical Officer (RMO), is responsible for providing immediate medical care to patients within a healthcare facility, typically in a hospital setting, by conducting initial a assessments, managing emergencies, monitoring to patient conditions, healthcare professionals all while maintaining accurate patient documentation. ",
                      style: TextStyle(fontSize: 14.sp, fontFamily: 'light'),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      spacing: 25.w,
                      children: [
                        const JobDetailTitleSubWidget(
                          title: "Job Location",
                          subtitle: "Coimbatore, Tamilnadu",
                        ),
                        const Expanded(
                          child: JobDetailTitleSubWidget(
                            title: "Branch",
                            subtitle: "KMCH Sulur",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    const JobDetailTitleSubWidget(
                      title: "Department",
                      subtitle: "Cardiology",
                    ),
                    SizedBox(height: 15.h),
                    const JobDetailTitleSubWidget(
                      title: "Job",
                      subtitle: "Full-time",
                    ),
                    SizedBox(height: 15.h),
                    const JobDetailTitleSubWidget(
                      title: "Schedule",
                      subtitle: "Morning shift, Evening shift, Night shift",
                    ),
                    SizedBox(height: 15.h),
                    const JobDetailTitleSubWidget(
                      title: "Allowance",
                      subtitle: "Food ✔️ Accommodation ✔️ Travel✔️",
                    ),
                  ],
                ),
              ),
              CustomButton(
                label: "Continue to Apply",
                onTap: () {
                  context.pushNamed(AppRouteNames.jobApplyScreen1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
