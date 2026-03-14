import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/controller/main_section/chat_controller.dart';

class DutyDoctorsProviders {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthController()),
    ChangeNotifierProvider(create: (_) => BottomNavController()),
    ChangeNotifierProvider(create: (_) => ChatController()),
  ];
}
