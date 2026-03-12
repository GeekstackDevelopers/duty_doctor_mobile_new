import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class UpcomingDutyTile extends StatelessWidget {
  final void Function()? onTap;
  const UpcomingDutyTile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Column(
          children: [
            Row(
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
                          TitleSubWidget(
                            title: "Role",
                            subtitle: "Staff Nurse",
                          ),
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
            ),
            SizedBox(height: 10.h),
            const DottedDivider(),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 12.w,
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
          ],
        ),
      ),
    );
  }
}

class TitleSubWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool needExpand;
  const TitleSubWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.needExpand = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$title: ",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'medium',
            letterSpacing: -0.2,
          ),
        ),
        needExpand
            ? Expanded(
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                    letterSpacing: -0.2,
                  ),
                  maxLines: 1,
                ),
              )
            : Text(
                subtitle,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
      ],
    );
  }
}
