import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/custom_dutys_tile.dart';

class DashRecommendedDutys extends StatelessWidget {
  const DashRecommendedDutys({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        spacing: 10.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended Jobs",
                style: TextStyle(fontSize: 20.sp, fontFamily: 'medium'),
              ),
              Text("See all", style: TextStyle(fontSize: 13.sp)),
            ],
          ),
          SizedBox(
            height: 210.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [const CustomDutysTile(), const CustomDutysTile()],
            ),
          ),
        ],
      ),
    );
  }
}
