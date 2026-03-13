import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/job_detail_top_section.dart';
import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/jobs/screens/job_details_screen/widgets/point_widget.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class JobApplyScreen1 extends StatelessWidget {
  const JobApplyScreen1({super.key});

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
                      "Requirement",
                      style: TextStyle(fontSize: 15.sp, fontFamily: 'medium'),
                    ),
                    SizedBox(height: 5.h),
                    const PointWidget(
                      text:
                          "Promotes and sells Medtronics products and are services within an assigned.",
                    ),
                    const PointWidget(
                      text:
                          "Responsible for developing, building, and streng ening long-term relationships with stakeholder.",
                    ),
                    const PointWidget(
                      text:
                          "Responsible for pursuing leads, assessing needs and providing product services to maximize the benefits derived from Medtronics products.",
                    ),
                    const PointWidget(
                      text:
                          "Promotes and establishes education of the medi companys products and/or services.",
                    ),
                    const PointWidget(
                      text:
                          "Conducts market research including customers a nd competitors activities.",
                    ),
                    const PointWidget(
                      text:
                          "Implements market development plans/strateg and changes as needed.",
                    ),
                    const PointWidget(
                      text:
                          "Communicates customer feedback on new products and/or modifications existing product",
                    ),
                    const DottedDivider(),
                    SizedBox(height: 15.h),
                    Text(
                      "Hospital",
                      style: TextStyle(fontSize: 15.sp, fontFamily: 'medium'),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10.w,
                      children: [
                        Container(
                          width: 76.w,
                          height: 76.w,
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.grey),
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Image.asset(
                            "assets/images/temp/hospial_logo/image 12-2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kovai Medical Center and Hospital",
                                style: TextStyle(fontSize: 20.sp),
                              ),
                              Row(
                                spacing: 3.w,
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) =>
                                        Icon(Icons.star_rounded, size: 15.w),
                                  ),
                                  Text(
                                    " 5/5 Google review",
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 0.4, height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 25.sp,
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 10.h,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 10.w,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/phone.svg",
                                    width: 21.w,
                                  ),
                                  Text(
                                    "+91 9791336435",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10.w,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/mail.svg",
                                    width: 21.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "kmch@gmail.com",
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/address.svg",
                                width: 21.w,
                              ),
                              Text(
                                "2/220, Ramakrishana road, Coimbatore - 07",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "About KMCH",
                      style: TextStyle(fontSize: 15.sp, fontFamily: 'medium'),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "KMCH is a multi specialty hospital in Coimbatore India that was incorporated in 1985 and began functioning in 1990. It's known for providing afford high-quality healthcare. ",
                      style: TextStyle(fontSize: 14.sp, fontFamily: 'light'),
                    ),
                    SizedBox(height: 10.h),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10.r),
                      child: Image.asset(
                        "assets/images/temp/Screenshot 2024-12-12 at 4.12.23 PM 1.png",
                        width: 363.w,
                        height: 168.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ),
              CustomButton(
                label: "Continue to Apply",
                onTap: () {
                  context.pushNamed(AppRouteNames.jobApplyScreen2);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
