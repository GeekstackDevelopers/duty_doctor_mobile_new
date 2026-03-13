import 'package:duty_doctor/app.dart';

class JobDetailTitleSubWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const JobDetailTitleSubWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15.sp, fontFamily: 'medium'),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 14.sp, fontFamily: 'light'),
        ),
      ],
    );
  }
}
