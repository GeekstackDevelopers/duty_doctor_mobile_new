import 'package:duty_doctor/app.dart';

class CustomBottomNavBar extends StatefulWidget {
  final void Function()? onTap;
  final int selectedIndex;
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int selectedIndex1;
  @override
  void initState() {
    selectedIndex1 = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, left: 8, right: 8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...labels.keys.map(
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectedIndex1 = index;
                    widget.onTap!();
                  },
                  child: CustomNavBarItem(
                    selectedIndex: selectedIndex1,
                    index: index,
                    label: labels[index]!,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNavBarItem extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String label;
  const CustomNavBarItem({
    super.key,
    required this.selectedIndex,
    required this.index,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 18,
          height: 3,
          child: Material(
            elevation: index == selectedIndex ? 5 : 0,
            color: index == selectedIndex
                ? AppColors.primaryColor
                : Colors.transparent,
          ),
        ),
        const SizedBox(height: 7),
        SvgPicture.asset(
          index == selectedIndex
              ? selectedLabelPath[index]
              : unSelectedLabelPath[index],
          width: 22,
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: index == selectedIndex
              ? CustomTextStyles.lufgaText.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                )
              : CustomTextStyles.lufgaText.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
        ),
      ],
    );
  }
}

final Map<int, String> labels = {
  0: 'Home',
  1: 'Message',
  2: 'Dutys',
  3: 'Wishlist',
  4: 'Profile',
};
List<Color> colors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.purple,
];
