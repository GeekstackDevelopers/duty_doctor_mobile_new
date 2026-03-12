import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashGraphSection extends StatelessWidget {
  const DashGraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(15.w),
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: AppColors.lightPrimaryColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10.h,
                children: [
                  Text(
                    'Compliance & Verification overview',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const DottedDivider(),
                  const Text('7 metrics completed\nLast updated: 05 Jan 2025'),
                ],
              ),
            ),

            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 110.w,
                  height: 110.w,
                  child: SfCircularChart(
                    margin: EdgeInsets.zero,

                    series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                        dataSource: chartData,
                        xValueMapper: (ChartData data, _) => data.category,
                        yValueMapper: (ChartData data, _) => data.value,
                        // dataLabelSettings: const DataLabelSettings(isVisible: true),
                        innerRadius: '80%',
                      ),
                    ],
                  ),
                ),
                Text(
                  "70.22%",
                  style: TextStyle(fontSize: 16.sp, fontFamily: 'semibold'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}

final List<ChartData> chartData = [
  ChartData('Food', 20),
  ChartData('Travel', 28),
  ChartData('Shopping', 24),
  ChartData('Others', 2),
  ChartData('Foods', 5),
  ChartData('Travels', 8),
  ChartData('Shopsping', 4),
  ChartData('Otherss', 3),
];
