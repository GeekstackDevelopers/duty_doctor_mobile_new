import 'package:duty_doctor/app.dart';

class ProfileJobStatusSection extends StatelessWidget {
  const ProfileJobStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(vertical: 15.h),
      padding: .all(15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.borderColor),
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          const TitleCountWidget(title: "Applied", count: 50),
          Text(
            "|",
            style: TextStyle(fontSize: 14.sp, color: AppColors.fontGrey),
          ),
          const TitleCountWidget(title: "Selected", count: 20),
          Text(
            "|",
            style: TextStyle(fontSize: 14.sp, color: AppColors.fontGrey),
          ),
          const TitleCountWidget(title: "Interview", count: 10),
          Text(
            "|",
            style: TextStyle(fontSize: 14.sp, color: AppColors.fontGrey),
          ),
          const TitleCountWidget(title: "Offer", count: 5),
        ],
      ),
    );
  }
}

class TitleCountWidget extends StatelessWidget {
  final String title;
  final int count;
  const TitleCountWidget({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3.h,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.fontGrey,
            fontFamily: 'light',
          ),
        ),
        Text(
          count.toString(),
          style: TextStyle(fontSize: 25.sp, color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
