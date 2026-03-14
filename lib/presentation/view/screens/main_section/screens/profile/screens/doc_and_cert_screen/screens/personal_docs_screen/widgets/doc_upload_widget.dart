import 'package:dotted_border/dotted_border.dart';
import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/dotted_divider.dart';

class DocUploadWidget extends StatelessWidget {
  final String title;
  const DocUploadWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h),
          Text(
            title,
            style: TextStyle(fontSize: 25.sp, fontFamily: 'medium', height: 0),
          ),
          Text("upload your $title", style: TextStyle(fontSize: 12.sp)),
          Padding(
            padding: .only(top: 5.h, bottom: 5.h),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(21.r),
              child: DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  radius: Radius.circular(21.r),
                  color: Colors.black,
                  strokeWidth: 1.5,

                  dashPattern: [2.w, 2.w],
                ),
                child: Container(
                  width: 363.w,
                  height: 140.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.r),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      SvgPicture.asset("assets/icons/upload.svg"),
                      SizedBox(height: 5.h),
                      Text(
                        "Click To Upload",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'semibold',
                        ),
                      ),
                      Text(
                        "PDF, DOC, JPG, PNG files supported",
                        style: TextStyle(fontFamily: 'light', fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: "Document Tips: ",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 12.sp,
                fontFamily: "medium",
              ),
              children: [
                const TextSpan(
                  text:
                      "This will be used for your ID Badge. It should be a full facial shot with a  clean background if possible.",
                  style: TextStyle(
                    fontFamily: 'lufga',
                    color: AppColors.fontGrey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: .only(top: 15.h),
            child: const DottedDivider(
              thickness: 1,
              dashLength: 5,
              dashSpacing: 5,
            ),
          ),
        ],
      ),
    );
  }
}
