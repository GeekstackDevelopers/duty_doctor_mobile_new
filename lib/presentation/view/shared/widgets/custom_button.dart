import 'package:duty_doctor/app.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String label;
  final Color? buttonColor;
  final Color? textColor;
  final bool isLoading;
  final double? hPadding;
  final double? vPadding;
  final double? fontSize;
  final double? borderRadius;
  final bool isInfiniteWidth;
  const CustomButton({
    super.key,
    this.onTap,
    this.fontSize,
    this.vPadding,
    this.hPadding,
    required this.label,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    this.isInfiniteWidth = true,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<double> scaleNotifier = ValueNotifier(1);
    return ValueListenableBuilder(
      valueListenable: scaleNotifier,
      builder: (context, scale, _) {
        return Align(
          alignment: Alignment.center,
          child: AnimatedScale(
            curve: Easing.legacyDecelerate,
            duration: const Duration(milliseconds: 50),
            scale: scale,
            child: InkWell(
              onTap: isLoading
                  ? null
                  : () {
                      scaleNotifier.value = 0.97;
                      Future.delayed(const Duration(milliseconds: 100), () {
                        scaleNotifier.value = 1;
                        if (onTap != null) {
                          onTap!();
                        }
                      });
                    },
              child: Container(
                width: isInfiniteWidth ? double.infinity : null,
                padding: EdgeInsets.symmetric(
                  horizontal: hPadding ?? 14.w,
                  vertical: vPadding ?? 14.h,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.4,
                    color: textColor ?? Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                  color: buttonColor ?? AppColors.primaryColor,
                ),
                child: Center(
                  child: isLoading
                      ? SizedBox(
                          width: 20.w,
                          height: 20.w,
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          label,
                          style: TextStyle(
                            fontFamily: 'lufga',
                            color: textColor ?? Colors.white,
                            fontSize: fontSize ?? 15.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.1,
                          ),
                        ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
