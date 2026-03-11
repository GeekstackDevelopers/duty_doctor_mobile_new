import 'package:duty_doctor/app.dart';

class DutyDoctorsProviders {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthController()),
    ChangeNotifierProvider(create: (_) => BottomNavController()),
  ];
}
