import 'package:duty_doctor/app.dart';

class PointWidget extends StatelessWidget {
  final String text;
  const PointWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.w,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Icon(Icons.circle, size: 3.r),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.sp, fontFamily: 'Light'),
            ),
          ),
        ],
      ),
    );
  }
}
