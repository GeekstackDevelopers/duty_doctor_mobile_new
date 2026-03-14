import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/controller/main_section/chat_controller.dart';

import 'chat_textfield.dart';

class ChatBottomSection extends StatefulWidget {
  const ChatBottomSection({super.key});

  @override
  State<ChatBottomSection> createState() => _ChatBottomSectionState();
}

class _ChatBottomSectionState extends State<ChatBottomSection> {
  ValueNotifier<bool> expandNotifier = ValueNotifier(false);
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    expandNotifier.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: expandNotifier,
      builder: (context, value, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (value)
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    expandNotifier.value = !value;
                  },
                  child: Container(color: Colors.black54),
                ),
              ),
            Container(
              padding: .all(15.w),
              decoration: const BoxDecoration(color: AppColors.white),
              child: SafeArea(
                child: AnimatedSize(
                  duration: Durations.medium1,
                  alignment: .bottomCenter,
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      value
                          ? Padding(
                              padding: .only(bottom: 15.h, top: 10.h),
                              child: Row(
                                spacing: 25.w,
                                children: [
                                  ChatShareOption(
                                    title: "Documents",
                                    icon: "assets/icons/doc.svg",
                                    onTap: () {},
                                  ),
                                  ChatShareOption(
                                    title: "Photo/Video",
                                    icon: "assets/icons/gallery.svg",
                                    onTap: () {},
                                  ),
                                  ChatShareOption(
                                    title: "Camera",
                                    icon: "assets/icons/camer.svg",
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(),
                      Row(
                        spacing: 10.w,
                        children: [
                          Expanded(
                            child: ChatTextfield(
                              expandNotifier: expandNotifier,
                              controller: controller,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (controller.text.trim().isNotEmpty) {
                                Provider.of<ChatController>(
                                  context,
                                  listen: false,
                                ).newMessage(controller.text);
                                controller.clear();
                              }
                            },
                            child: Container(
                              width: 52.w,
                              height: 52.w,
                              padding: .all(13.w),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: .circular(15.r),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/messge_send.svg",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class ChatShareOption extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  const ChatShareOption({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        spacing: 5.h,
        children: [
          Container(
            width: 45.w,
            height: 45.w,
            padding: .all(10.w),
            decoration: BoxDecoration(
              shape: .circle,
              border: Border.all(color: AppColors.primaryColor),
            ),
            child: SvgPicture.asset(icon),
          ),
          Text(title, style: TextStyle(fontSize: 12.sp)),
        ],
      ),
    );
  }
}
