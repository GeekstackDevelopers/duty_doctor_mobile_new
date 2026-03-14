import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/domain/model/message_model.dart';

class ChatController extends ChangeNotifier {
  bool updateFlag = false;
  List<MessageModel> messages = [];

  void newMessage(String message) {
    messages.add(MessageModel(message: message, time: DateTime.now()));
    updateFlag = !updateFlag;
    notifyListeners();
  }
}
