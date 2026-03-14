import 'package:duty_doctor/app.dart';

class ChatTextfield extends StatelessWidget {
  final ValueNotifier expandNotifier;
  final TextEditingController? controller;
  const ChatTextfield({
    super.key,
    required this.expandNotifier,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(15.r),
      child: TextFormField(
        style: TextStyle(fontSize: 12.sp),
        controller: controller,
        decoration: InputDecoration(
          isCollapsed: true,
          isDense: true,
          border: .none,
          contentPadding: .symmetric(vertical: 17.w, horizontal: 15.w),
          fillColor: AppColors.lightPrimaryColor,
          hintText: "type message...",
          hintStyle: TextStyle(fontSize: 12.sp),
          filled: true,

          suffixIcon: GestureDetector(
            onTap: () {
              expandNotifier.value = !expandNotifier.value;
            },
            child: Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: SvgPicture.asset(
                "assets/icons/chat_share.svg",
                width: 20.w,
              ),
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minHeight: 20.h,
            minWidth: 30.w,
          ),
        ),
      ),
    );
  }
}
