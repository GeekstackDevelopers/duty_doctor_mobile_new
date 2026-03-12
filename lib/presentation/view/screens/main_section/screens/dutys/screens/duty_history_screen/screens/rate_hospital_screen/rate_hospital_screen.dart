import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dutys/screens/duty_history_screen/screens/rate_hospital_screen/widgets/rating_quetion_optoin_widget.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dutys/screens/duty_history_screen/screens/rate_hospital_screen/widgets/rating_widget.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/dutys/screens/duty_history_screen/screens/rate_hospital_screen/widgets/special_note_field.dart';

import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class RateHospitalScreen extends StatelessWidget {
  const RateHospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Feedback"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 15.w),
          child: ListView(
            children: [
              SizedBox(height: 15.h),
              Center(
                child: Text(
                  "Feedback for KMCH Hospital",
                  style: TextStyle(fontFamily: 'medium', fontSize: 18.sp),
                ),
              ),
              SizedBox(height: 10.h),
              const Center(child: RatingWidget(rating: 4)),
              SizedBox(height: 15.h),
              const DottedDivider(),
              const RatingQuetionOptoinWidget(
                question:
                    "HE-BP-01 Shift Started On-Time (Ward/Reception Ready for Duty)",
                option: ["Yes", "No"],
              ),
              const RatingQuetionOptoinWidget(
                question:
                    "HE-BP-02 Clear Instructions Given at Start (Handover, Case Notes, Duty Expectations",
                option: ["Good", "Average", "Poor"],
              ),
              const RatingQuetionOptoinWidget(
                question: "HE-BP-03 Staff Cooperation & Team Behavior",
                option: ["Good", "Average", "Poor"],
              ),
              const RatingQuetionOptoinWidget(
                question: "HE-BP-04 Nurse/Support Staff Assistance During Duty",
                option: ["Good", "Average", "Poor"],
              ),
              const RatingQuetionOptoinWidget(
                question: "HE-BP-05 Safe & Supportive Workplace Environment",
                option: ["Yes", "No"],
              ),
              const RatingQuetionOptoinWidget(
                question: "HE-BP-06 Professional & Respectful Communication",
                option: ["Good", "Average", "Poor"],
              ),
              const RatingQuetionOptoinWidget(
                question:
                    "HE-BP-07 Availability of Required Equipment & Medicines",
                option: ["Adequate", "Not Adequate"],
              ),
              const RatingQuetionOptoinWidget(
                question: "HE-BP-08 Any Dispute or Unfair Incident?",
                option: ["Yes", "No"],
              ),
              const RatingQuetionOptoinWidget(
                question:
                    "HE-BP-09 Issue Escalation Response (If Any Problem Was Reported)",
                option: ["Quick", "Slow", "Not Required"],
              ),
              const SpecialNoteField(),
              CustomButton(label: "Submit Feedback", borderRadius: 15.r),
            ],
          ),
        ),
      ),
    );
  }
}
