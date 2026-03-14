import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/data/mock/chat_mock.dart';
import 'package:duty_doctor/domain/model/chat_model.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/messages/widgets/messagelist_tile.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: 'Messages'),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.w),
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              const Divider(thickness: 0.2, height: 0),
          itemCount: 7,

          itemBuilder: (context, index) => MessagelistTile(
            chatModel: ChatModel(
              name: mockHospNames[index % 3],
              logo: mockhospitalImages[index % 3],
            ),
          ),
        ),
      ),
    );
  }
}
