import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/domain/model/chat_model.dart';
import 'package:duty_doctor/utils/methods/date_fns.dart';

class MessagelistTile extends StatelessWidget {
  final ChatModel chatModel;
  const MessagelistTile({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 10.h, bottom: 5),
      titleAlignment: ListTileTitleAlignment.bottom,
      onTap: () {
        context.pushNamed(AppRouteNames.messageScreen, extra: chatModel);
      },
      visualDensity: const VisualDensity(vertical: -1),
      leading: Container(
        width: 50.w,
        height: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: .3,
            color: AppColors.primaryColor.withValues(alpha: 0.2),
          ),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/temp/hospial_logo/image 12-3.png'),
          ),
        ),
      ),
      title: Row(
        children: [
          Text(
            chatModel.name,
            style: CustomTextStyles.mainScreenTitle.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              "Hey, hai",
              style: CustomTextStyles.lufgaText.copyWith(fontSize: 12.sp),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          Text(
            formatDateTime(DateTime.now()),
            style: CustomTextStyles.lufgaText.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
