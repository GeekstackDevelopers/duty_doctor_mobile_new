import 'package:duty_doctor/app.dart';

class SpecialNoteField extends StatelessWidget {
  const SpecialNoteField({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.grey),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25.h),
        Text(
          "Special Notes (Optional)",
          style: TextStyle(fontSize: 12.sp, color: AppColors.fontGrey),
        ),
        SizedBox(height: 10.h),
        TextField(
          style: TextStyle(fontSize: 15.sp),
          maxLength: 100,
          maxLines: 5,
          minLines: 1,
          decoration: InputDecoration(
            counterText: "",
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
            hintText:
                '(Professional can add anything important — max 100 characters)',
            hintStyle: TextStyle(fontFamily: 'light', fontSize: 10.sp),
            hintMaxLines: 1,
            border: border,
            errorBorder: border,
            enabledBorder: border,
            focusedBorder: border,
            disabledBorder: border,
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}
