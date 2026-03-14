import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/controller/main_section/chat_controller.dart';
import 'package:intl/intl.dart';
import 'widget/chat_bottom_section.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "KMCH Hospital"),
      bottomNavigationBar: const ChatBottomSection(),
      body: SafeArea(
        child: Consumer<ChatController>(
          builder: (context, controller, _) {
            return Padding(
              padding: .only(left: 15.w, right: 15.w),
              child: ListView.separated(
                reverse: true,
                itemCount: controller.messages.length,
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
                itemBuilder: (context, index) => Align(
                  alignment: .centerRight,
                  child: Container(
                    margin: .only(left: 96.w, bottom: 15.w),
                    padding: .all(10.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D267E),
                      borderRadius: .circular(12.r),
                    ),
                    child: Column(
                      crossAxisAlignment: .end,
                      children: [
                        Text(
                          controller.messages[index].message,

                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          DateFormat("h:mm")
                              .format(controller.messages[index].time)
                              .toLowerCase(),
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'light',
                            color: const Color(0xFFBEBEBE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
