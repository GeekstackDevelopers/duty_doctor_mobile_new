import 'package:duty_doctor/app.dart';

class BottomNavController extends ChangeNotifier {
  int selectedIndex = 0;
  bool navigatingFromBottom = false;
  late PageController pageController;
  void naviagate(int toIndex, [bool fromBottom = true]) {
    if (fromBottom) navigatingFromBottom = true;
    selectedIndex = toIndex;
    pageController.animateToPage(
      toIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 300), () {
      navigatingFromBottom = false;
    });
  }
}
