import 'package:duty_doctor/app.dart';

class RatingWidget extends StatefulWidget {
  final int rating;
  const RatingWidget({super.key, required this.rating});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int rating = 0;
  @override
  void initState() {
    rating = widget.rating;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5.w,
          children: [
            ...List.generate(
              5,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    rating = index + 1;
                  });
                },
                child: Icon(
                  index < rating
                      ? Icons.star_rounded
                      : Icons.star_outline_rounded,
                  color: AppColors.primaryColor,
                  size: 28.w,
                ),
              ),
            ),
          ],
        ),
        Text(
          rating > 3 ? "We’re glad you loved it.!" : "Thank's for the feedback",
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    );
  }
}
