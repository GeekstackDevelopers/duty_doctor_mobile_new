import 'package:duty_doctor/utils/constants/icons_paths/bottom_nav_label_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavItem extends BottomNavigationBarItem {
  final String label1;
  final int index;
  final int selectedIndex;
  CustomBottomNavItem(
    this.label1,
    this.index,
    this.selectedIndex, {
    super.icon = const SizedBox(),
  });
  @override
  String? get label => label1;
  @override
  Key? get key => ObjectKey(label);
  @override
  Widget get icon => SvgPicture.asset(
    // selectedLabelPath[index],
    index == selectedIndex
        ? selectedLabelPath[index]
        : unSelectedLabelPath[index],
    width: 22,
  );
}
