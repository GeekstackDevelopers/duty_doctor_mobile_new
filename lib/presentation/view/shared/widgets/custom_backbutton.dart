import 'package:duty_doctor/app.dart';

class CustomBackButton extends StatelessWidget {
  final bool blue;
  const CustomBackButton({super.key, this.blue = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pop();
        // Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: blue
              ? AppColors.grey.withValues(alpha: 0.5)
              : Colors.white.withValues(alpha: 0.2),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 5),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: blue ? null : Colors.white,
          ),
        ),
      ),
    );
  }
}
