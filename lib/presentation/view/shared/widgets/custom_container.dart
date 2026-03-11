import 'package:duty_doctor/app.dart';

class CustomContainer extends StatelessWidget {
  final double padding;
  final void Function()? onTap;
  final double borderRadius;
  final Widget child;
  const CustomContainer({
    super.key,
    this.padding = 15,
    this.borderRadius = 15,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
