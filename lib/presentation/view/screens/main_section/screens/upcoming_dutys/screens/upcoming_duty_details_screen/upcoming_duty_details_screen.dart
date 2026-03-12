import 'package:duty_doctor/app.dart';

class UpcomingDutyDetailsScreen extends StatelessWidget {
  const UpcomingDutyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: "Upcoming duty",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const UpcomingDutyHospitalTile(),
                    SizedBox(height: 15.h),
                    const DutyInformationWidget(),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Column(
                        spacing: 5.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Duty Information",
                            style: TextStyle(
                              fontSize: 19,
                              fontFamily: 'medium',
                            ),
                          ),
                          ...[
                            "Patient rounds",
                            "Emergency care support",
                            "Update patient records",
                            "Handover notes to next shift",
                          ].map(
                            (e) => Row(
                              children: [
                                const Text(
                                  "✦ ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'medium',
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                label: "Accept the Duty",
                borderRadius: 15.r,
                vPadding: 15.h,
              ),
              SizedBox(height: 15.h),
              CustomButton(
                label: "Not Available",
                borderRadius: 15.r,
                vPadding: 15.h,
                textColor: AppColors.primaryColor,
                buttonColor: AppColors.backgroudColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DutyInformationWidget extends StatelessWidget {
  const DutyInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Duty Information",
            style: TextStyle(fontSize: 19, fontFamily: 'medium'),
          ),

          const DutyInfoTitleSubWidget(
            title: "Expected End Time:",
            subtitle: "25 Oct 2025 • 07:00am",
          ),
          const DutyInfoTitleSubWidget(
            title: "Total duration",
            subtitle: "10 hours",
          ),
          const DutyInfoTitleSubWidget(
            title: "Payment amount",
            subtitle: "₹2,500",
          ),
          const DutyInfoTitleSubWidget(
            title: "Payment Type:",
            subtitle: "Credit",
          ),
        ],
      ),
    );
  }
}

class UpcomingDutyHospitalTile extends StatelessWidget {
  const UpcomingDutyHospitalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        spacing: 10.w,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15.r),
            child: Image.asset(
              'assets/images/temp/hospial_logo/image 12-2.png',
              width: 60.w,
              height: 60.w,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KMCH Hospital",
                  style: TextStyle(fontSize: 18.sp, fontFamily: 'medium'),
                ),
                const TitleSubWidget(
                  title: "Location",
                  subtitle: "Coimbatore",
                  needExpand: true,
                ),
                const TitleSubWidget(title: "Role", subtitle: "Staff Nurse"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DutyInfoTitleSubWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const DutyInfoTitleSubWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: 'medium',
            letterSpacing: -.2,
          ),
        ),
        Text(subtitle, style: TextStyle(fontSize: 14.sp, letterSpacing: -.2)),
      ],
    );
  }
}
