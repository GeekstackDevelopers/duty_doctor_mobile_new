import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_apply_question_ans_widget.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_detail_top_section.dart';

class JobApplyScreen2 extends StatelessWidget {
  const JobApplyScreen2({super.key});

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
                child: ListView(
                  children: [
                    const JobDetailTopSection(),
                    Text(
                      "Simply Task for your Knowledge",
                      style: TextStyle(fontSize: 15.sp, fontFamily: 'medium'),
                    ),
                    SizedBox(height: 7.h),
                    const JobApplyQuestionAnsWidget(
                      index: "1",
                      qestion:
                          "Why do you want to work as a Duty Doctor in our hospital?",
                    ),
                    const JobApplyQuestionAnsWidget(
                      index: "2",
                      qestion: "What is your experience handling emergencies?",
                    ),
                    const JobApplyQuestionAnsWidget(
                      index: "3",
                      qestion:
                          "How do you manage multiple patients during peak hours?",
                    ),
                    const JobApplyQuestionAnsWidget(
                      index: "4",
                      qestion:
                          "What is your approach to patient communication?",
                    ),
                  ],
                ),
              ),
              CustomButton(
                label: "Continue to Apply",
                onTap: () {
                  context.pushNamed(AppRouteNames.jobApplyScreen3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
