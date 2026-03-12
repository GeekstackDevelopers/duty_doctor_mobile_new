import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class DutyHistoryTile extends StatelessWidget {
  const DutyHistoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRouteNames.feebackScreen);
      },
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Column(
          spacing: 10.h,
          children: [
            const DutyHistoryHospitalSection(),
            const DottedDivider(),
            Wrap(
              spacing: 15.w,
              children: [
                const TitleSubWidget(
                  title: "Position",
                  subtitle: "ICU - Night Shift",
                ),
                const TitleSubWidget(
                  title: "Salary for shift",
                  subtitle: "₹2,350",
                ),
                const TitleSubWidget(
                  title: "Worked on",
                  subtitle: "24 Nov, 2025 - 12:40pm",
                ),
                const TitleSubWidget(title: "Status", subtitle: "Not started"),
              ],
            ),
            const DottedDivider(),
            const RatingWidget(title: "Rating for you", rating: 5),
            const RatingWidget(title: "Rating for hospital", rating: 4),
          ],
        ),
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  final String title;
  final int rating;
  final void Function()? onTap;
  const RatingWidget({
    super.key,
    required this.title,
    required this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      children: [
        Text(
          '$title:',
          style: TextStyle(fontSize: 12.sp, fontFamily: 'medium'),
        ),
        ...List.generate(
          5,
          (index) => Icon(
            index < rating ? Icons.star_rounded : Icons.star_outline_rounded,
            size: 18.r,
          ),
        ),
      ],
    );
  }
}

class DutyHistoryHospitalSection extends StatelessWidget {
  const DutyHistoryHospitalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              const Row(
                children: [
                  Expanded(
                    child: TitleSubWidget(
                      title: "Location",
                      subtitle: "Coimbatore",
                      needExpand: true,
                    ),
                  ),
                  TitleSubWidget(title: "Role", subtitle: "Staff Nurse"),
                ],
              ),
              const Text(
                "View details",
                style: TextStyle(
                  fontSize: 9,
                  height: 1.6,
                  color: AppColors.primaryColor,
                  fontFamily: 'medium',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
