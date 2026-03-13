import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/dialogs/job_apply_success_dialouge.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_detail_top_section.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/upload_file_widget.dart';

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
                child: ListView(
                  children: [
                    const JobDetailTopSection(),
                    Text(
                      "Upload Files",
                      style: TextStyle(fontSize: 15.sp, fontFamily: "medium"),
                    ),
                    SizedBox(height: 10.h),
                    const UploadFileWidget(text: "Upload your resume"),
                    const UploadFileWidget(text: "Upload cover image"),
                  ],
                ),
              ),
              CustomButton(
                label: "Submit",
                onTap: () {
                  showJobAppliedSuccessDialogue();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
