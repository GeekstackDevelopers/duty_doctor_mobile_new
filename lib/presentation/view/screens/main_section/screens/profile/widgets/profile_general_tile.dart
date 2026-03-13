import 'package:duty_doctor/app.dart';

class ProfileGeneralTile extends StatelessWidget {
  final String icon;
  final String text;
  final void Function()? onTap;
  final bool islast;
  const ProfileGeneralTile({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
    this.islast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            spacing: 10.w,
            children: [
              SvgPicture.asset(icon, width: 20.w),
              Text(text, style: TextStyle(fontSize: 15.sp)),
              const Spacer(),
              Icon(Icons.arrow_forward_ios_outlined, size: 20.w),
            ],
          ),
        ),
        if (!islast) Divider(height: 36.h, thickness: 0.2),
      ],
    );
  }
}
