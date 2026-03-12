import 'package:duty_doctor/app.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> screens;
  late BottomNavController bottomNavController =
      Provider.of<BottomNavController>(context, listen: false);
  @override
  void initState() {
    bottomNavController.pageController = PageController(
      initialPage: bottomNavController.selectedIndex,
    );
    screens = [
      const Dashboard(),
      const JobsScreen(),
      const MessagesScreen(),
      const DutysScreen(),
      const ProfileScreen(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        var canPop = await showConfirmExitDialogue(context);
        if (context.mounted && canPop) {
          if (Platform.isAndroid) {
            SystemNavigator.pop();
          } else {
            exit(0);
          }
        }
      },
      child: Scaffold(
        extendBody: true,
        body: PageView(
          controller: bottomNavController.pageController,
          children: screens,
          onPageChanged: (value) {
            if (!bottomNavController.navigatingFromBottom) {
              bottomNavController.naviagate(value, false);
            }
          },
        ),
        bottomNavigationBar: Consumer<BottomNavController>(
          builder: (context, controller, _) {
            return Stack(
              children: [
                Material(
                  elevation: 10,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                      right: 8.w,
                      bottom: 15.h,
                      top: 2.h,
                    ),
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(splashFactory: NoSplash.splashFactory),
                      child: BottomNavigationBar(
                        elevation: 0,
                        showUnselectedLabels: true,
                        backgroundColor: Colors.transparent,
                        type: BottomNavigationBarType.fixed,
                        onTap: (value) {
                          bottomNavController.naviagate(value);
                        },
                        showSelectedLabels: true,
                        selectedItemColor: AppColors.primaryColor,
                        selectedLabelStyle: CustomTextStyles.lufgaText.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          // overflow: TextOverflow.fade,
                          fontSize: 12.sp,
                        ),
                        unselectedItemColor: AppColors.black,
                        unselectedLabelStyle: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12.sp,
                        ),
                        currentIndex: bottomNavController.selectedIndex,
                        items: [
                          BottomNavigationBarItem(
                            label: capitalizeFirst("Dashboard"),
                            icon: Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: SvgPicture.asset(
                                0 == bottomNavController.selectedIndex
                                    ? selectedLabelPath[0]
                                    : unSelectedLabelPath[0],
                                width: 22,
                              ),
                            ),
                          ),
                          BottomNavigationBarItem(
                            label: capitalizeFirst("Jobs"),
                            icon: Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: SvgPicture.asset(
                                1 == bottomNavController.selectedIndex
                                    ? selectedLabelPath[1]
                                    : unSelectedLabelPath[1],
                                width: 22,
                              ),
                            ),
                          ),
                          BottomNavigationBarItem(
                            label: capitalizeFirst("Messages"),
                            icon: Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: SvgPicture.asset(
                                // selectedLabelPath[index],
                                2 == bottomNavController.selectedIndex
                                    ? selectedLabelPath[2]
                                    : unSelectedLabelPath[2],
                                width: 22,
                              ),
                            ),
                          ),
                          BottomNavigationBarItem(
                            label: capitalizeFirst("Dutys"),

                            icon: Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: SvgPicture.asset(
                                // selectedLabelPath[index],
                                3 == bottomNavController.selectedIndex
                                    ? selectedLabelPath[3]
                                    : unSelectedLabelPath[3],
                                width: 22,
                              ),
                            ),
                          ),
                          BottomNavigationBarItem(
                            label: capitalizeFirst("Profile"),
                            icon: Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: SvgPicture.asset(
                                // selectedLabelPath[index],
                                4 == bottomNavController.selectedIndex
                                    ? selectedLabelPath[4]
                                    : unSelectedLabelPath[4],
                                width: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  curve: Easing.legacy,
                  duration: const Duration(seconds: 1),
                  left: calculateLeft(
                    context: context,
                    selectedIndex: bottomNavController.selectedIndex,
                  ),
                  child: SizedBox(
                    width: 20.w,
                    height: 3.h,
                    child: const Material(
                      elevation: 5,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

double calculateLeft({
  required BuildContext context,
  required int selectedIndex,
}) {
  double padding = 16.w;
  double barSize = 18.w;
  double singleSpace = (MediaQuery.sizeOf(context).width - padding) / 5;
  return 8.w +
      (selectedIndex * singleSpace) +
      (singleSpace / 2) -
      barSize / 2 -
      1;
}
