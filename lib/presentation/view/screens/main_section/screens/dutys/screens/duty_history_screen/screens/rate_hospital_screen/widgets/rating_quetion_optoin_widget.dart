import 'package:duty_doctor/app.dart';

class RatingQuetionOptoinWidget extends StatefulWidget {
  final String question;
  final List<String> option;
  final String? selected;

  const RatingQuetionOptoinWidget({
    super.key,
    required this.question,
    required this.option,
    this.selected,
  });

  @override
  State<RatingQuetionOptoinWidget> createState() =>
      _RatingQuetionOptoinWidgetState();
}

class _RatingQuetionOptoinWidgetState extends State<RatingQuetionOptoinWidget> {
  String? selected;
  @override
  void initState() {
    selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25.h),
        Text(
          widget.question,
          style: TextStyle(fontSize: 12.sp, color: AppColors.fontGrey),
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 15.w,
          runSpacing: 15.h,
          children: [
            ...widget.option.map((e) {
              final bool isSeleced = selected == e;
              final Color color = !isSeleced
                  ? AppColors.black
                  : AppColors.white;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selected = e;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 15.w,
                  ),
                  decoration: BoxDecoration(
                    color: isSeleced ? AppColors.primaryColor : null,
                    border: isSeleced
                        ? null
                        : Border.all(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    spacing: 5.w,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check, color: color, size: 20.w),
                      Text(
                        e,
                        style: TextStyle(color: color, fontSize: 17.sp),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
