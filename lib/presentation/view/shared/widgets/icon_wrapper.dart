import 'package:duty_doctor/app.dart';

class IconWrapper extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  const IconWrapper({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.grey.withValues(alpha: 0.5),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(7),
        child: Center(child: child),
      ),
    );
  }
}
