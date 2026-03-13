import 'package:dotted_border/dotted_border.dart';
import 'package:duty_doctor/app.dart';

class UploadFileWidget extends StatelessWidget {
  final String text;

  const UploadFileWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(21.r),
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(21.r),
              color: Colors.black.withAlpha(38),
              strokeWidth: 1.5,

              dashPattern: [7.w, 7.w],
            ),
            child: Container(
              width: 363.w,
              height: 176.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.r),
                color: const Color(0xFFF5F5F5),
              ),
              child: Column(
                mainAxisSize: .min,
                children: [
                  SvgPicture.asset("assets/icons/upload.svg"),
                  SizedBox(height: 5.h),
                  Text(text, style: TextStyle(fontSize: 15.sp)),
                  const Text(
                    "Choose File",
                    style: TextStyle(fontFamily: 'semibold'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          "Supported file formats, PNG, JPG, PDF \nUnder 5MP",
          style: TextStyle(fontSize: 13.sp, color: AppColors.fontGrey),
        ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
