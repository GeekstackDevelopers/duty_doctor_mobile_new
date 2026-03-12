import 'package:duty_doctor/app.dart';

class JobsSearchBar extends StatelessWidget {
  const JobsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.borderColor),
    );
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50.w,
            child: TextField(
              style: TextStyle(fontSize: 15.sp),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 15.h,
                ),
                hintText: 'Search here...',
                hintStyle: TextStyle(fontFamily: 'light', fontSize: 15.sp),
                border: border,
                errorBorder: border,
                enabledBorder: border,
                focusedBorder: border,
                disabledBorder: border,
                filled: true,
                fillColor: Colors.white,
                prefixIconConstraints: BoxConstraints(
                  maxWidth: 45.w,
                  minWidth: 45.w,
                  maxHeight: 20.w,
                ),
                prefixIcon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 20.w,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: UnconstrainedBox(
            child: SvgPicture.asset(
              "assets/icons/Tuning--Streamline-Solar-Ar.svg",
              width: 20.w,
            ),
          ),
        ),
      ],
    );
  }
}
