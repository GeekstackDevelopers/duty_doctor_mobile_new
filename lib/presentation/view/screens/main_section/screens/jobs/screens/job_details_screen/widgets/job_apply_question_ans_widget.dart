import 'package:duty_doctor/app.dart';

class JobApplyQuestionAnsWidget extends StatelessWidget {
  final String index;
  final String qestion;
  const JobApplyQuestionAnsWidget({
    super.key,
    required this.index,
    required this.qestion,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.grey),
    );
    return Column(
      spacing: 5.sp,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$index. $qestion"),
        TextFormField(
          minLines: 5,
          maxLines: 10,
          style: TextStyle(fontSize: 13.sp),
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: "Answer here...",
            hintStyle: TextStyle(fontSize: 13.sp),
            filled: true,
            border: border,
            errorBorder: border,
            enabledBorder: border,
            focusedBorder: border,
            disabledBorder: border,
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
