import 'dart:ui';

import 'package:duty_doctor/app.dart';

class AppliedPeoples extends StatelessWidget {
  const AppliedPeoples({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.sizeOf(context).width * 0.45) - 90.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: (MediaQuery.sizeOf(context).width * 0.45) - 90.w,
            child: Stack(
              children: [
                Positioned(
                  child: CircleAvatar(
                    radius: 18.w,
                    backgroundColor: Colors.yellow,
                    child: Image.asset('assets/images/hari.png', width: 18.w),
                  ),
                ),
                Positioned(
                  right: 35.w,
                  child: CircleAvatar(
                    radius: 18.w,
                    backgroundColor: Colors.blueAccent,
                    child: Image.asset('assets/images/hari.png', width: 18.w),
                  ),
                ),
                Positioned(
                  right: 18.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 18.w,
                    child: Image.asset('assets/images/hari.png', width: 18.w),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: GlassAvatar(
                    text: "1k",
                    textColor: Colors.black,
                    size: 36.w,
                  ),
                ),
              ],
            ),
          ),
          Text('Applied Peoples', style: TextStyle(fontSize: 10.sp)),
        ],
      ),
    );
  }
}

class GlassAvatar extends StatelessWidget {
  final String text;
  final double size;
  final Color textColor;
  final Color glassColor;
  final double blurAmount;

  const GlassAvatar({
    super.key,
    required this.text,
    this.size = 60.0,
    this.textColor = Colors.white,
    this.glassColor = Colors.red,
    this.blurAmount = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          // Glass effect container
          ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blurAmount, sigmaY: blurAmount),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: glassColor.withValues(alpha: 0.05),
                  border: Border.all(
                    color: glassColor.withValues(alpha: 0),
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: size * 0.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Gradient overlay for enhanced glass effect
          ClipOval(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    glassColor.withValues(alpha: 0.1),
                    glassColor.withValues(alpha: 0.05),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
