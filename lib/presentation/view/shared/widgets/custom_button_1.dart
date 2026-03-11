import 'package:duty_doctor/app.dart';

class CustomButton1 extends StatelessWidget {
  final void Function()? onTap;
  final Function(TapUpDetails)? onTapUp;
  final String label;
  final ButtonOption buttontype;
  final bool rejected;
  final double? borderRadius;
  const CustomButton1({
    super.key,
    this.onTap,
    this.onTapUp,
    this.buttontype = ButtonOption.blue,
    required this.label,
    this.rejected = false,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<double> scaleNotfier = ValueNotifier(1);
    return Align(
      alignment: Alignment.center,
      child: ValueListenableBuilder(
        valueListenable: scaleNotfier,
        builder: (context, value, _) {
          return AnimatedScale(
            curve: Easing.legacyDecelerate,
            duration: const Duration(milliseconds: 50),
            scale: value,
            child: GestureDetector(
              onTapUp: onTapUp,
              onTap: () async {
                scaleNotfier.value = 0.95;
                Future.delayed(const Duration(milliseconds: 80), () {
                  scaleNotfier.value = 1;
                  if (onTap != null) {
                    onTap!();
                  }
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: buttontype == ButtonOption.white
                      ? Border.all(
                          color: rejected
                              ? AppColors.grey
                              : AppColors.primaryColor,
                        )
                      : Border.all(width: 0, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(borderRadius ?? 100),
                  color: colorOption[buttontype],
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontFamily: 'lufga',
                      color: buttontype == ButtonOption.white
                          ? rejected
                                ? AppColors.grey
                                : AppColors.primaryColor
                          : Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

enum ButtonOption { blue, white, green, red, grey }

const Map<ButtonOption, Color> colorOption = {
  ButtonOption.blue: AppColors.primaryColor,
  ButtonOption.green: Color.fromARGB(255, 0, 179, 81),
  ButtonOption.red: Color.fromARGB(255, 236, 0, 0),
  ButtonOption.white: Colors.white,
  ButtonOption.grey: Colors.grey,
};
