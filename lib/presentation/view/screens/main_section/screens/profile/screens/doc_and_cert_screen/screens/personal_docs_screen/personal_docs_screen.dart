import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/doc_and_cert_screen/screens/personal_docs_screen/widgets/doc_upload_widget.dart';

class PersonalDocsScreen extends StatelessWidget {
  const PersonalDocsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Personal Docs"),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 15.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      "Certifications",
                      style: TextStyle(fontSize: 25.sp, fontFamily: 'medium'),
                    ),
                    Text(
                      "You need to prove that you have a valid medical qualification and a current GMC licence to practice.",
                      style: TextStyle(fontSize: 12.sp, fontWeight: .w400),
                    ),
                  ],
                ),
              ),
              const DocUploadWidget(title: "Aadhar"),
              const DocUploadWidget(title: "Driving Licence"),
              const DocUploadWidget(title: "Photo"),
            ],
          ),
        ),
      ),
    );
  }
}
